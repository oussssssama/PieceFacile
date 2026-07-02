"""
PieceFacile

Excel Reader
"""

from pathlib import Path

from openpyxl import load_workbook


def open_workbook(path: Path):

    return load_workbook(path, data_only=True)


def worksheet(workbook, name: str):

    return workbook[name]
