from pathlib import Path

from .workbook import load_excel


class DatasetReader:

    def __init__(self, dataset: Path):
        self.workbook = load_excel(dataset)

    def sheet(self, name: str):
        return self.workbook[name]

    @property
    def sheets(self):
        return self.workbook.sheetnames
