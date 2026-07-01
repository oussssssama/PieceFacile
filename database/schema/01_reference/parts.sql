-- =============================================================================
-- PieceFacile Database
-- Module : Reference
-- Table  : parts
-- =============================================================================

CREATE TABLE parts (

    id BIGSERIAL PRIMARY KEY,

    part_category_id BIGINT NOT NULL
        REFERENCES part_categories(id)
        ON DELETE RESTRICT,

    name_ar VARCHAR(255),

    name_fr VARCHAR(255),

    name_en VARCHAR(255) NOT NULL,

    search_keywords TEXT,

    is_active BOOLEAN NOT NULL DEFAULT TRUE,

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    CONSTRAINT chk_parts_name
        CHECK (
            name_ar IS NOT NULL
            OR name_fr IS NOT NULL
            OR name_en IS NOT NULL
        )

);

COMMENT ON TABLE parts IS
'Stores the official spare parts recognized by the platform.';

COMMENT ON COLUMN parts.search_keywords IS
'Optional keywords used for search, autocomplete and AI-assisted matching.';
