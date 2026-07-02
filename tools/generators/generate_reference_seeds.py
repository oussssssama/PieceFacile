from pathlib import Path
import sys

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT))

from tools.generators.core.discovery import discover_datasets
from tools.generators.core.reader import DatasetReader
from tools.generators.core.extract_brands import extract as extract_brands
from tools.generators.core.write_brands import generate as write_brands

CATEGORY_SLUGS = {
    "passenger_cars": "passenger-cars",
    "light_commercial": "light-commercial-vehicles",
    "heavy_trucks": "heavy-trucks",
    "buses": "buses-coaches",
    "motorcycles": "motorcycles",
    "construction": "construction-equipment",
    "agricultural": "agricultural-equipment",
}

def main():

    datasets = discover_datasets(ROOT)

    print("\nGenerating reference seeds...\n")

    for ds in datasets:

        name = ds["name"]

        if name not in CATEGORY_SLUGS:
            print(f"Skipping {name} (unknown category)")
            continue

        print(f"Processing {name}")

        reader = DatasetReader(ds["excel"])

        brands = extract_brands(reader.sheet("1️⃣ Brands"))

        output = (
            ROOT
            / "database"
            / "seeds"
            / "reference"
            / name
            / "brands.sql"
        )

        write_brands(
            output,
            CATEGORY_SLUGS[name],
            brands
        )

        print(f"  ✓ {len(brands)} brands")

    print("\nDone.")


if __name__ == "__main__":
    main()
