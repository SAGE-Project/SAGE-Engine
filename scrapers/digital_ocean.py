import json
import subprocess

OFFERS_DIR = "./Data/json"


# "c64.0m976.0s1.0osLinuxp8.4030000000": {"cpu": 64, "memory": 976000, "storage": 1000, "operatingSystem": "Linux",
# "price": 8403},

def get_offers():
    # [[{'name': 's-1vcpu-2gb', 'slug': 's-1vcpu-2gb'}]
    result = subprocess.run("doctl kubernetes options sizes -o json".split(" "), stdout=subprocess.PIPE)
    return json.loads(result.stdout.decode('utf-8'))


def parse_offers(offers):
    output = {}

    i = 1
    for offer in offers:
        name = offer["name"]
        output[name] = {
            "cpu": int(name.replace("vcpu", "").split("-")[1]),
            "memory": int(name.replace("gb", "").replace("GiB", "").split("-")[2]) * 1000,
            "storage": 1000 * 1000,
            "operatingSystem": "Linux",
            "price": 100 * i
        }
        i += 1

    return output


if __name__ == '__main__':
    offers = get_offers()
    with open(f"{OFFERS_DIR}/digital_ocean_offers.json", "w+") as f:
        json.dump(parse_offers(offers), f)
