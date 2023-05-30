import json
import subprocess

import requests

API_KEY = "dop_v1_86c612a7aee3e08d392482f8c204531dfd6b14d74d5476f639d30bba64841952"
STATIC_DIR = "./scrapers/static"
OFFERS_DIR = "./Data/json"
PRICES = [
    12, 14, 14,
    18, 21, 21,
    24, 28,
]


# "c64.0m976.0s1.0osLinuxp8.4030000000": {"cpu": 64, "memory": 976000, "storage": 1000, "operatingSystem": "Linux",
# "price": 8403},

def get_extra_info():
    if API_KEY:
        result = requests.get(
            url="https://api.digitalocean.com/v2/sizes?per_page=100",
            headers={
                "Authorization": f"Bearer {API_KEY}",
                "Content-Type": "application/json"
            }
        )
        with open(f"{STATIC_DIR}/digital_ocean_prices.json", "w+") as f:
            json.dump(result.json(), f)

    with open(f"{STATIC_DIR}/digital_ocean_prices.json", "r") as f:
        result = json.load(f)

    result = result["sizes"]
    output = {}

    for option in result:
        output[option["slug"]] = {
            "price": int(option["price_monthly"]),
            "storage": option["disk"] * 1000  # in Mb
        }
    return output


def get_offers():
    # [[{'name': 's-1vcpu-2gb', 'slug': 's-1vcpu-2gb'}]
    result = subprocess.run("doctl kubernetes options sizes -o json".split(" "), stdout=subprocess.PIPE)
    return json.loads(result.stdout.decode('utf-8'))


def parse_offers(offers):
    output = {}
    extra_info = get_extra_info()

    for offer in offers:
        name = offer["name"]
        if extra_info.get(name):
            try:
                output[name] = {
                    "cpu": round(int(name.replace("vcpu", "").split("-")[1]) * 0.95 * 1000 - 650),  # in ms
                    # in Mb
                    "memory": round(int(name.replace("gb", "").replace("GiB", "").split("-")[2]) * 0.95 * 1000 - 750),
                    "storage": round(extra_info[name]["storage"] * 0.9 - 3 * 1000),
                    "operatingSystem": "Linux",
                    "price": extra_info[name]["price"] * 10  # 8,2 $ -> 82 10000
                }
            except:
                pass

    return output


if __name__ == '__main__':
    offers = get_offers()
    with open(f"{OFFERS_DIR}/digital_ocean_offers.json", "w+") as f:
        json.dump(parse_offers(offers), f)
