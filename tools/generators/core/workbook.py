from pathlib import Path
from openpyxl import load_workbook


def load_excel(path: Path):
    if not path.exists():
        raise FileNotFoundError(path)

    return load_workbook(path, data_only=True)
