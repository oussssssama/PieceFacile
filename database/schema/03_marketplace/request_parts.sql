-- =============================================================================
-- PieceFacile Database
-- Module      : Marketplace
-- Table       : request_parts
-- Description : Individual spare parts requested by buyers
-- =============================================================================

CREATE TABLE request_parts (

    id BIGSERIAL PRIMARY KEY,

    request_id BIGINT NOT NULL
        REFERENCES requests(id)
        ON DELETE CASCADE,

    part_category_id BIGINT
        REFERENCES part_categories(id),

    part_id BIGINT
        REFERENCES parts(id),

    custom_part_name VARCHAR(255),

    description TEXT,

    quantity INTEGER NOT NULL DEFAULT 1,

    part_condition_preference condition_preference
        NOT NULL DEFAULT 'any',

    status request_part_status
        NOT NULL DEFAULT 'pending',

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    CONSTRAINT chk_request_parts_quantity
        CHECK (quantity > 0),

    CONSTRAINT chk_request_parts_name
        CHECK (
            part_id IS NOT NULL
            OR custom_part_name IS NOT NULL
        )

);

COMMENT ON TABLE request_parts IS
'Stores every spare part requested within a buyer request.';

COMMENT ON COLUMN request_parts.custom_part_name IS
'Used when the requested part is not found in the reference database.';
