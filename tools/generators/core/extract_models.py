from slugify import slugify


def find_header_row(sheet):

    for row in sheet.iter_rows():

        values = [str(c.value).strip() if c.value else "" for c in row]

        if "Model ID" in values and "Model Name" in values:
            return row[0].row

    raise Exception("Model header row not found")


def extract(sheet):

    header_row = find_header_row(sheet)

    headers = [c.value for c in sheet[header_row]]

    index = {h: i for i, h in enumerate(headers)}

    models = []

    for row in sheet.iter_rows(min_row=header_row + 1, values_only=True):

        if not row[index["Model Name"]]:
            continue

        models.append(
            {
                "id": row[index["Model ID"]],
                "brand_id": row[index["Brand ID"]],
                "brand_name": row[index["Brand Name"]],
                "name": row[index["Model Name"]],
                "slug": slugify(str(row[index["Model Name"]])),
                "vehicle_type": row[index["Vehicle Type"]],
                "status": row[index["Status"]],
            }
        )

    return models
