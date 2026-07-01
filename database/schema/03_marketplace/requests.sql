-- =============================================================================
-- PieceFacile Database
-- Module      : Marketplace
-- Table       : requests
-- Description : Buyer spare-parts requests
-- =============================================================================

CREATE TABLE requests (

    id BIGSERIAL PRIMARY KEY,

    request_number VARCHAR(50) UNIQUE,

    buyer_profile_id UUID NOT NULL
        REFERENCES profiles(id)
        ON DELETE CASCADE,

    vehicle_category_id BIGINT NOT NULL
        REFERENCES vehicle_categories(id),

    brand_id BIGINT NOT NULL
        REFERENCES brands(id),

    model_id BIGINT NOT NULL
        REFERENCES models(id),

    vehicle_year SMALLINT NOT NULL,

    wilaya_id BIGINT NOT NULL
        REFERENCES wilayas(id),

    latitude NUMERIC(9,6),

    longitude NUMERIC(9,6),

    notes TEXT,

    visibility_scope visibility_scope NOT NULL,

    status request_status NOT NULL DEFAULT 'draft',

    expires_at TIMESTAMPTZ,

    closed_at TIMESTAMPTZ,

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    CONSTRAINT chk_vehicle_year
        CHECK (
            vehicle_year BETWEEN 1950
            AND EXTRACT(YEAR FROM CURRENT_DATE)::SMALLINT + 1
        )

);

COMMENT ON TABLE requests IS
'Stores buyer requests for spare parts.';

COMMENT ON COLUMN requests.request_number IS
'Human-readable request identifier.';

COMMENT ON COLUMN requests.notes IS
'Additional buyer information about the requested parts.';
