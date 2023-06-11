import itertools
import json
from Wrapper_ import Wrapper_


with open("../Models/json/SecureBilling_with_milli_cpu.json", "r") as file:
    application = json.load(file)

with open("../Data/json/digital_ocean_offers.json", "r") as file:
    offers_do = json.load(file)

# get all keys from the original object
keys = list(offers_do.keys())

# generate all possible combinations of 19 keys
combos = itertools.combinations(keys, 19)

offers_comb = []
# loop through each combination and create a new object
for combo in combos:
    new_obj = {}
    for key in combo:
        new_obj[key] = offers_do[key]

    # do something with the new object
    offers_comb.append(new_obj)

print(len(offers_comb))
print(application)

results = 0
for offer in offers_comb:
    wrapper = Wrapper_()
    with open("../Models/json/SecureBilling_with_milli_cpu.json", "r") as file:
        application = json.load(file)
    result = wrapper.solve(application, offer)
    if result:
        results = results + 1
        with open(f"generated/{application['application']}_{results}.json", "w") as outfile:
            # Write the JSON data to the file
            json.dump(result, outfile, indent=4)
