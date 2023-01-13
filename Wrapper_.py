import json
from Solvers.Core.ProblemDefinition import ManeuverProblem
from src.init import log
import src.smt


class Wrapper_:
    def solve(
            self, application_model_json,
            offers_json, symmetry_breaker="FVPR",
            inst=0, solver_id="z3"
    ):
        SMTsolver = src.smt.getSolver(solver_id)
        availableConfigurations = []
        for key, value in offers_json.items():
            specs_list = [key, value["cpu"], value["memory"], value["storage"], value["price"]]
            availableConfigurations.append(specs_list)

        problem = ManeuverProblem()
        problem.readConfigurationJSON(application_model_json, availableConfigurations, inst)

        SMTsolver.init_problem(problem, 'optimize', sb_option=symmetry_breaker)
        price, distr, runtime, a_mat, vms_type = SMTsolver.run()

        if not runtime or runtime > 2400:
            log("TESTING", "WARN", "Test aborted. Timeout")
        else:
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
                }
            }
            application_model_json.update(output)
            return application_model_json


wrapper = Wrapper_()

with open('Models/json/Wordpress.json', 'r') as file:
    application = json.load(file)

with open('Data/json/offers_20.json', 'r') as file:
    offers_20 = json.load(file)

result = wrapper.solve(application, offers_20, inst=3)
print(json.dumps(result, indent=4))
