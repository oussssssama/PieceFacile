"""
PieceFacile Universal Reference Seed Generator
"""

from pathlib import Path
import argparse

from tools.common.excel import open_workbook


ROOT = Path(__file__).resolve().parents[2]


def parse_arguments():

    parser = argparse.ArgumentParser()

    parser.add_argument(
        "--dataset",
        required=True,
        help="Dataset name",
    )

    parser.add_argument(
        "--input",
        required=True,
        help="Excel dataset",
    )

    return parser.parse_args()


def main():

    args = parse_arguments()

    workbook = open_workbook(Path(args.input))

    print()

    print("PieceFacile Reference Generator")

    print("--------------------------------")

    print(f"Dataset : {args.dataset}")

    print(f"Sheets  : {workbook.sheetnames}")

    print()


if __name__ == "__main__":
    main()

