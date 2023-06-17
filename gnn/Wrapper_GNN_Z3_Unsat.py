from gnn.Wrapper_GNN import Wrapper_GNN
from Wrapper_Z3_Assert import Wrapper_Z3_Assert
from Wrapper_Z3_Unsat import Wrapper_Z3_Unsat
import copy


class Wrapper_GNN_Z3_Unsat:
    def __init__(self, model_path="trained_model_SecureWeb_DO.pth", symmetry_breaker="FVPR"):
        self.gnn_predictor = Wrapper_GNN(model_path=model_path)
        self.symmetry_breaker = symmetry_breaker

    def solve(self, application_model_json, offers_json, mode="gnn"):
        z3_solver_unsat_core = Wrapper_Z3_Unsat(symmetry_breaker=self.symmetry_breaker)
        z3_solver = Wrapper_Z3_Assert(symmetry_breaker=self.symmetry_breaker)
        if mode == "gnn":
            prediction = self.gnn_predictor.solve(copy.deepcopy(application_model_json), offers_json)
            iter = 1
            unsat_core = z3_solver_unsat_core.solve(copy.deepcopy(application_model_json), offers_json,
                                                    prediction=prediction, iter=iter)
            ignore_gs = []
            while len(unsat_core) != 0:
                iter = iter+1
                filtered_const = [str(c.decl()) for c in unsat_core if str(c.decl()).startswith("g")]
                ignore_gs = ignore_gs + filtered_const
                unsat_core = z3_solver_unsat_core.solve(copy.deepcopy(application_model_json), offers_json,
                                                        prediction=prediction, ignore_gs=ignore_gs, iter=iter)
            solution = z3_solver.solve(copy.deepcopy(application_model_json), offers_json,
                                       prediction=prediction, ignore_gs=ignore_gs)

        elif mode == "sim":
            sim_perfect_prediction = z3_solver.solve(copy.deepcopy(application_model_json), offers_json)
            solution = z3_solver.solve(copy.deepcopy(application_model_json), offers_json,
                                       prediction_sim=sim_perfect_prediction)
        else:
            solution = z3_solver.solve(copy.deepcopy(application_model_json), offers_json)
        print(solution["output"]["time (secs)"])
        print(solution["output"]["min_price"])

        return solution
