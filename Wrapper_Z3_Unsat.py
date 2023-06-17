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
                    solver.solver.assert_and_track(solver.a[comp_idx * solver.nrVM + comp_idx] == 1, gi)
            for placement in placements:
                gi = Bool("g%i" % len(solver.g_constraints))
                solver.g_constraints.append(gi)
                if str(gi.decl()) not in ignore_gs:
                    solver.solver.assert_and_track(solver.vmType[vm_idx] == placement, gi)


class Wrapper_Z3_Unsat:
    def __init__(self, symmetry_breaker="FVPR", solver_id="z3"):
        self.symmetry_breaker = symmetry_breaker
        self.solver_id = solver_id

    def solve(
            self,
            application_model_json,
            offers_json,
            prediction=None,
            inst=0,
            ignore_gs=None,
            iter=0
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
        SMTsolver.init_problem(problem, "unsat", sb_option=self.symmetry_breaker, smt2lib=f"output/unsat_{iter}", smt2libsol=f"output/unsat_sol_{iter}")
        if prediction is not None:
            add_pred_soft_constraints(SMTsolver, prediction, ignore_gs)

        unsat_core, _, _ = SMTsolver.run()
        return unsat_core

