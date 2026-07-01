-- =============================================================================
-- PieceFacile Database
-- Module      : Marketplace
-- Table       : deals
-- Description : Marketplace transactions created after offer acceptance
-- =============================================================================

CREATE TABLE deals (

    id BIGSERIAL PRIMARY KEY,

    deal_number VARCHAR(50) UNIQUE,

    request_id BIGINT NOT NULL
        REFERENCES requests(id)
        ON DELETE RESTRICT,

    offer_id BIGINT NOT NULL
        REFERENCES offers(id)
        ON DELETE RESTRICT,

    buyer_profile_id UUID NOT NULL
        REFERENCES profiles(id)
        ON DELETE RESTRICT,

    shop_id BIGINT NOT NULL
        REFERENCES shops(id)
        ON DELETE RESTRICT,

    final_amount NUMERIC(12,2)
        NOT NULL DEFAULT 0,

    accepted_offer_snapshot JSONB,

    status deal_status
        NOT NULL DEFAULT 'active',

    accepted_at TIMESTAMPTZ,

    buyer_confirmed_at TIMESTAMPTZ,

    completed_at TIMESTAMPTZ,

    cancelled_at TIMESTAMPTZ,

    cancellation_reason TEXT,

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    CONSTRAINT uq_deal_offer
        UNIQUE (offer_id),

    CONSTRAINT chk_deal_amount
        CHECK (final_amount >= 0)

);

COMMENT ON TABLE deals IS
'Stores marketplace deals created after buyers accept offers.';

COMMENT ON COLUMN deals.accepted_offer_snapshot IS
'Immutable snapshot of the accepted offer at the moment the deal was created.';
