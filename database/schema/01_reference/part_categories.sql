-- =============================================================================
-- PieceFacile Database
-- Module : Reference
-- Table  : part_categories
-- =============================================================================

CREATE TABLE part_categories (

    id BIGSERIAL PRIMARY KEY,

    parent_id BIGINT
        REFERENCES part_categories(id)
        ON DELETE SET NULL,

    name_ar VARCHAR(150) NOT NULL,

    name_fr VARCHAR(150),

    name_en VARCHAR(150),

    slug VARCHAR(150) NOT NULL UNIQUE,

    sort_order INTEGER NOT NULL DEFAULT 0,

    is_active BOOLEAN NOT NULL DEFAULT TRUE,

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()

);

COMMENT ON TABLE part_categories IS
'Stores the official hierarchical spare part categories supported by the platform.';

COMMENT ON COLUMN part_categories.parent_id IS
'Parent category. NULL indicates a root category.';
