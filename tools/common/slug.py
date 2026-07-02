"""
PieceFacile

Slug Utilities

Converts names into database-friendly slugs.
"""

import re
import unicodedata


def slugify(text: str) -> str:
    """
    Convert text into a lowercase slug.

    Example:
        Mercedes-Benz -> mercedes-benz
        Land Rover -> land-rover
    """

    text = unicodedata.normalize("NFKD", text)
    text = text.encode("ascii", "ignore").decode("ascii")
    text = text.lower()

    text = re.sub(r"[^a-z0-9]+", "-", text)

    text = re.sub(r"-+", "-", text)

    return text.strip("-")
