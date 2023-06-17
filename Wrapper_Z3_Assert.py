import json
from Solvers.Core.ProblemDefinition import ManeuverProblem
from src.init import log
import src.smt
from z3 import *


def add_pred_soft_constraints(solver, prediction, ignore_gs):
    # prediction is a matrix of size (nr components) * (nr vms * nr offers)
    for comp_idx in range(solver.nrComp):
        pred_comp = prediction[comp_idx]
        for vm_idx in range(solver.nrVM):
            pred_comp_vm = pred_comp[vm_idx * solver.nrOffers:(vm_idx + 1) * solver.nrOffers]
            placements = [i for i, x in enumerate(pred_comp_vm) if x == 1]
            if len(placements) != 0:
                gi = Bool("g%i" % len(solver.g_constraints))
                solver.g_constraints.append(gi)
                if str(gi.decl()) not in ignore_gs:
                    print("HEEEEIi")
                    solver.solver.add(solver.a[comp_idx * solver.nrVM + comp_idx] == 1)
            for placement in placements:
                gi = Bool("g%i" % len(solver.g_constraints))
                solver.g_constraints.append(gi)
                if str(gi.decl()) not in ignore_gs:
                    print("HEEEEIi")
                    solver.solver.add(solver.vmType[vm_idx] == placement)


class Wrapper_Z3_Assert:
    def __init__(self, symmetry_breaker="FVPR", solver_id="z3"):
        self.symmetry_breaker = symmetry_breaker
        self.solver_id = solver_id

    def solve(
            self,
            application_model_json,
            offers_json,
            prediction=None,
            prediction_sim=None,
            inst=0,
            ignore_gs=None
    ):
        if ignore_gs is None:
            ignore_gs = []
        SMTsolver = src.smt.getSolver(self.solver_id)
        availableConfigurations = []
        for key, value in offers_json.items():
            specs_list = [
                key,
                value["cpu"],
                value["memory"],
                value["storage"],
                value["price"],
            ]
            availableConfigurations.append(specs_list)

        problem = ManeuverProblem()
        problem.readConfigurationJSON(
            application_model_json, availableConfigurations, inst
        )
        SMTsolver.init_problem(problem, "optimize", sb_option=self.symmetry_breaker, smt2lib="output/final_solve",
                               smt2libsol="output/final_solution")
        if prediction is not None:
            add_pred_soft_constraints(SMTsolver, prediction, ignore_gs)
        elif prediction_sim is not None:
            add_pred_soft_constraints_sim(SMTsolver, prediction_sim)
        price, distr, runtime, a_mat, vms_type = SMTsolver.run()

        if not runtime or runtime > 2400:
            log("TESTING", "WARN", "Test aborted. Timeout")
        else:
            # print(runtime)
            vm_specs = []
            for index, (key, value) in enumerate(offers_json.items()):
                if (index + 1) in vms_type:
                    vm_spec = {key: value}
                    vm_spec[key]["id"] = index + 1
                    vm_specs.append(vm_spec)

            output = {
                "output": {
                    "min_price": sum(distr),
                    "type_of_sym_br": self.symmetry_breaker or "None",
                    "time (secs)": runtime,
                    "types_of_VMs": [vm_type.as_long() for vm_type in vms_type],
                    "prices_of_VMs": distr,
                    "VMs specs": vm_specs,
                    "assign_matr": [[el.as_long() for el in row] for row in a_mat],
                    "offers": offers_json
                }
            }
            application_model_json.update(output)
            return application_model_json
