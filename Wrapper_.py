import json
from Solvers.Core.ProblemDefinition import ManeuverProblem
from src.init import log
import src.smt


class Wrapper_:
    def solve(
        self,
        application_model_json,
        offers_json,
        symmetry_breaker="FVPR",
        inst=0,
        solver_id="z3",
    ):
        SMTsolver = src.smt.getSolver(solver_id)
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

        SMTsolver.init_problem(problem, "optimize", sb_option=symmetry_breaker)
        print(SMTsolver.a)
        print(SMTsolver.vmType)

        # SMTsolver.solver.add_soft(SMTsolver.a[0] == 1)
        # SMTsolver.solver.add_soft(SMTsolver.a[1] == 0)
        # SMTsolver.solver.add_soft(SMTsolver.a[2] == 0)
        # SMTsolver.solver.add_soft(SMTsolver.a[3] == 0)
        # SMTsolver.solver.add_soft(SMTsolver.a[4] == 0)
        # SMTsolver.solver.add_soft(SMTsolver.a[5] == 0)
        #
        # SMTsolver.solver.add_soft(SMTsolver.a[6] == 0)
        # SMTsolver.solver.add_soft(SMTsolver.a[7] == 0)
        # SMTsolver.solver.add_soft(SMTsolver.a[8] == 1)
        # SMTsolver.solver.add_soft(SMTsolver.a[9] == 0)
        # SMTsolver.solver.add_soft(SMTsolver.a[10] == 1)
        # SMTsolver.solver.add_soft(SMTsolver.a[11] == 0)
        #
        # SMTsolver.solver.add_soft(SMTsolver.a[12] == 0)
        # SMTsolver.solver.add_soft(SMTsolver.a[13] == 0)
        # SMTsolver.solver.add_soft(SMTsolver.a[14] == 0)
        # SMTsolver.solver.add_soft(SMTsolver.a[15] == 1)
        # SMTsolver.solver.add_soft(SMTsolver.a[16] == 0)
        # SMTsolver.solver.add_soft(SMTsolver.a[17] == 0)
        #
        # SMTsolver.solver.add_soft(SMTsolver.a[18] == 0)
        # SMTsolver.solver.add_soft(SMTsolver.a[19] == 1)
        # SMTsolver.solver.add_soft(SMTsolver.a[20] == 0)
        # SMTsolver.solver.add_soft(SMTsolver.a[21] == 0)
        # SMTsolver.solver.add_soft(SMTsolver.a[22] == 0)
        # SMTsolver.solver.add_soft(SMTsolver.a[23] == 0)
        #
        # SMTsolver.solver.add_soft(SMTsolver.a[24] == 0)
        # SMTsolver.solver.add_soft(SMTsolver.a[25] == 0)
        # SMTsolver.solver.add_soft(SMTsolver.a[26] == 1)
        #         # SMTsolver.solver.add_soft(SMTsolver.a[27] == 1)
        # SMTsolver.solver.add_soft(SMTsolver.a[28] == 1)
        # SMTsolver.solver.add_soft(SMTsolver.a[29] == 0)
        #
        # SMTsolver.solver.add_soft(SMTsolver.vmType[1] == 341)
        # SMTsolver.solver.add_soft(SMTsolver.vmType[0] == 252)
        # SMTsolver.solver.add_soft(SMTsolver.vmType[4] == 341)
        # SMTsolver.solver.add_soft(SMTsolver.vmType[2] == 278)
        # SMTsolver.solver.add_soft(SMTsolver.vmType[3] == 341)
        # SMTsolver.solver.add_soft(SMTsolver.vmType[5] == 84)

        price, distr, runtime, a_mat, vms_type = SMTsolver.run()

        print(a_mat)
        print(vms_type)
        print(price)
        if not runtime or runtime > 2400:
            log("TESTING", "WARN", "Test aborted. Timeout")
        else:
            print(runtime)
            vm_specs = []
            for index, (key, value) in enumerate(offers_json.items()):
                if (index + 1) in vms_type:
                    vm_spec = {key: value}
                    vm_spec[key]["id"] = index + 1
                    vm_specs.append(vm_spec)

            output = {
                "output": {
                    "min_price": sum(distr),
                    "type_of_sym_br": symmetry_breaker or "None",
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


wrapper = Wrapper_()

with open("Models/json/Wordpress.json", "r") as file:
    application = json.load(file)

with open("Data/json/offers_20.json", "r") as file:
    offers_20 = json.load(file)


wrapper = Wrapper_()

result = wrapper.solve(application, offers_20)
print(result)