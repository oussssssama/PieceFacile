-- =============================================================================
-- PieceFacile Database
-- Module : Reference
-- Table  : wilayas
-- =============================================================================

CREATE TABLE wilayas (

    id BIGSERIAL PRIMARY KEY,

    code VARCHAR(5) NOT NULL UNIQUE,

    name_ar VARCHAR(100) NOT NULL,

    name_fr VARCHAR(100) NOT NULL,

    sort_order INTEGER NOT NULL DEFAULT 0,

    is_active BOOLEAN NOT NULL DEFAULT TRUE,

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()

);

COMMENT ON TABLE wilayas IS
'Stores the official Algerian wilayas used throughout the marketplace.';

COMMENT ON COLUMN wilayas.code IS
'Official Algerian wilaya code.';

COMMENT ON COLUMN wilayas.sort_order IS
'Display order in application lists.';
