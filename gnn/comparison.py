import json
import random
from gnn.main import Model, RGCN, HeteroMLPPredictor
from gnn.Wrapper_GNN import Wrapper_GNN
from gnn.Wrapper_GNN_Z3 import Wrapper_GNN_Z3

with open("../Models/json/SecureWeb_with_milli_cpu.json", "r") as file:
    application = json.load(file)

with open("../Data/json/digital_ocean_offers.json", "r") as file:
    offers_do = json.load(file)

# wrapper_gnn = Wrapper_GNN()
# wrapper_gnn.solve(application, offers_do)
# wrapper_gnn.solve(application, dict(random.sample(list(offers_do.items()), 19)))

wrapper_gnn_z3 = Wrapper_GNN_Z3()
print(wrapper_gnn_z3.solve(application, offers_do, use_gnn=True))
