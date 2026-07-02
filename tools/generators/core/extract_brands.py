from slugify import slugify


def find_header_row(sheet):

    for row in sheet.iter_rows():

        values = [str(c.value).strip() if c.value else "" for c in row]

        if "Brand ID" in values and "Brand Name" in values:
            return row[0].row

    raise Exception("Brand header row not found")


def extract(sheet):

    header_row = find_header_row(sheet)

    headers = [c.value for c in sheet[header_row]]

    index = {h: i for i, h in enumerate(headers)}

    brands = []

    for row in sheet.iter_rows(min_row=header_row + 1, values_only=True):

        if not row[index["Brand Name"]]:
            continue

        brands.append(
            {
                "id": row[index["Brand ID"]],
                "name": row[index["Brand Name"]],
                "slug": slugify(str(row[index["Brand Name"]])),
                "country": row[index["Country"]],
                "parent_group": row[index["Parent Group"]],
                "status": row[index["Status"]],
            }
        )

    return brands
