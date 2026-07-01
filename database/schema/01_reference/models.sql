-- =============================================================================
-- PieceFacile Database
-- Module : Reference
-- Table  : models
-- =============================================================================

CREATE TABLE models (

    id BIGSERIAL PRIMARY KEY,

    brand_id BIGINT NOT NULL
        REFERENCES brands(id)
        ON DELETE CASCADE,

    name VARCHAR(150) NOT NULL,

    slug VARCHAR(150) NOT NULL,

    production_start_year SMALLINT,

    production_end_year SMALLINT,

    is_popular BOOLEAN NOT NULL DEFAULT FALSE,

    is_active BOOLEAN NOT NULL DEFAULT TRUE,

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    CONSTRAINT uq_models_name
        UNIQUE (brand_id, name),

    CONSTRAINT uq_models_slug
        UNIQUE (brand_id, slug),

    CONSTRAINT chk_models_years
        CHECK (
            production_end_year IS NULL
            OR production_start_year IS NULL
            OR production_end_year >= production_start_year
        )

);

COMMENT ON TABLE models IS
'Stores the official vehicle models supported by the platform.';
