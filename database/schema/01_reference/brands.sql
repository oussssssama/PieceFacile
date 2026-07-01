-- =============================================================================
-- PieceFacile Database
-- Module : Reference
-- Table  : brands
-- =============================================================================

CREATE TABLE brands (

    id BIGSERIAL PRIMARY KEY,

    vehicle_category_id BIGINT NOT NULL
        REFERENCES vehicle_categories(id),

    name VARCHAR(150) NOT NULL,

    slug VARCHAR(150) NOT NULL,

    is_popular BOOLEAN NOT NULL DEFAULT FALSE,

    sort_order INTEGER NOT NULL DEFAULT 0,

    is_active BOOLEAN NOT NULL DEFAULT TRUE,

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    CONSTRAINT uq_brands_name
        UNIQUE (vehicle_category_id, name),

    CONSTRAINT uq_brands_slug
        UNIQUE (vehicle_category_id, slug)

);

COMMENT ON TABLE brands IS
'Stores the official vehicle brands supported by the platform.';
