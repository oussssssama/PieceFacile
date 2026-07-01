-- =============================================================================
-- PieceFacile Database
-- Module      : Marketplace
-- Table       : offer_parts
-- Description : Individual items included in seller offers
-- =============================================================================

CREATE TABLE offer_parts (

    id BIGSERIAL PRIMARY KEY,

    offer_id BIGINT NOT NULL
        REFERENCES offers(id)
        ON DELETE CASCADE,

    request_part_id BIGINT NOT NULL
        REFERENCES request_parts(id)
        ON DELETE CASCADE,

    availability_status availability_status NOT NULL,

    condition part_condition NOT NULL,

    requested_quantity INTEGER NOT NULL,

    offered_quantity INTEGER NOT NULL,

    unit_price NUMERIC(12,2) NOT NULL DEFAULT 0,

    future_availability_note TEXT,

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    CONSTRAINT chk_requested_quantity
        CHECK (requested_quantity > 0),

    CONSTRAINT chk_offered_quantity
        CHECK (offered_quantity >= 0),

    CONSTRAINT chk_unit_price
        CHECK (unit_price >= 0)

);

COMMENT ON TABLE offer_parts IS
'Stores individual spare parts included in seller offers.';

COMMENT ON COLUMN offer_parts.future_availability_note IS
'Optional note when a part may become available later.';
