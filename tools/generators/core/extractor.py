def find_header_row(sheet, required_headers):

    for row in sheet.iter_rows():

        values = [
            str(c.value).strip()
            if c.value is not None else ""
            for c in row
        ]

        if all(header in values for header in required_headers):
            return row[0].row

    raise Exception(
        f"Header not found: {required_headers}"
    )


def extract(sheet, config):

    header_row = find_header_row(
        sheet,
        config["header_keys"]
    )

    headers = [c.value for c in sheet[header_row]]

    index = {
        h: i
        for i, h in enumerate(headers)
    }

    rows = []

    for row in sheet.iter_rows(
        min_row=header_row + 1,
        values_only=True
    ):

        if row[index[config["header_keys"][1]]] is None:
            continue

        item = {}

        for excel_col, output_col in config["columns"].items():

            item[output_col] = row[index[excel_col]]

        rows.append(item)

    return rows
