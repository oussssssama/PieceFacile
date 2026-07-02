from pathlib import Path

HEADER = """-- =============================================================================
-- PieceFacile
-- AUTO GENERATED FILE
-- DO NOT EDIT
-- =============================================================================

BEGIN;

"""

FOOTER = """

COMMIT;
"""


def _escape(value):

    if value is None:
        return "NULL"

    if isinstance(value, bool):
        return "TRUE" if value else "FALSE"

    return "'" + str(value).replace("'", "''") + "'"


class SqlWriter:

    def __init__(self, output: Path):

        self.output = output

        self.output.parent.mkdir(parents=True, exist_ok=True)

        self.file = open(output, "w", encoding="utf-8")

        self.file.write(HEADER)

    def write(self, sql):

        self.file.write(sql)

        self.file.write("\n")

    def close(self):

        self.file.write(FOOTER)

        self.file.close()
