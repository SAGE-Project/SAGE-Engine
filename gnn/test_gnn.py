import json
from gnn.main import Model, RGCN, HeteroMLPPredictor
from gnn.Wrapper_GNN import Wrapper_GNN


with open("../Models/json/SecureBilling_with_milli_cpu.json", "r") as file:
    application = json.load(file)

with open("../Data/json/digital_ocean_offers.json", "r") as file:
    offers_do = json.load(file)

wrapper_gnn = Wrapper_GNN()
wrapper_gnn.solve(application, offers_do)
