from .sql_writer import SqlWriter


def generate(output, category_slug, brands):

    writer = SqlWriter(output)

    writer.write(
"""INSERT INTO brands
(
vehicle_category_id,
name,
slug,
is_popular,
sort_order,
is_active
)
VALUES"""
)

    rows = []

    for order, brand in enumerate(brands, start=1):

        rows.append(
f"""
(
(
SELECT id
FROM vehicle_categories
WHERE slug='{category_slug}'
),
'{brand["name"].replace("'", "''")}',
'{brand["slug"]}',
TRUE,
{order},
TRUE
)
"""
)

    writer.write(",".join(rows))

    writer.write(";")

    writer.close()
