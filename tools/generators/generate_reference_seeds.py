from pathlib import Path
import sys

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT))

from tools.generators.core.discovery import discover_datasets

def main():

    datasets = discover_datasets(ROOT)

    print()

    print("Datasets found")

    print("----------------")

    for ds in datasets:

        print(ds["name"])

        print(ds["excel"])

        print()

if __name__ == "__main__":
    main()
