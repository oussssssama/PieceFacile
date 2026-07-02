from pathlib import Path

def discover_datasets(root: Path):

    datasets = []

    base = root / "datasets"

    for folder in sorted(base.iterdir()):

        if not folder.is_dir():
            continue

        files = list(folder.glob("*.xlsx"))

        if not files:
            continue

        datasets.append(
            {
                "name": folder.name,
                "excel": files[0]
            }
        )

    return datasets
