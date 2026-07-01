-- =============================================================================
-- PieceFacile Database
-- Module      : Marketplace
-- Table       : offers
-- Description : Seller offers submitted for buyer requests
-- =============================================================================

CREATE TABLE offers (

    id BIGSERIAL PRIMARY KEY,

    offer_number VARCHAR(50) UNIQUE,

    request_id BIGINT NOT NULL
        REFERENCES requests(id)
        ON DELETE CASCADE,

    shop_id BIGINT NOT NULL
        REFERENCES shops(id)
        ON DELETE CASCADE,

    status offer_status NOT NULL
        DEFAULT 'sent',

    seller_message TEXT,

    delivery_available BOOLEAN NOT NULL DEFAULT FALSE,

    delivery_notes TEXT,

    total_amount NUMERIC(12,2)
        NOT NULL DEFAULT 0,

    price_update_count INTEGER
        NOT NULL DEFAULT 0,

    last_price_update_at TIMESTAMPTZ,

    expires_at TIMESTAMPTZ,

    accepted_at TIMESTAMPTZ,

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    CONSTRAINT uq_offer_shop
        UNIQUE (request_id, shop_id),

    CONSTRAINT chk_offer_total_amount
        CHECK (total_amount >= 0),

    CONSTRAINT chk_offer_price_updates
        CHECK (price_update_count >= 0)

);

COMMENT ON TABLE offers IS
'Stores seller offers submitted in response to buyer requests.';

COMMENT ON COLUMN offers.offer_number IS
'Human-readable offer identifier.';

COMMENT ON COLUMN offers.total_amount IS
'Total value of all offered items.';
