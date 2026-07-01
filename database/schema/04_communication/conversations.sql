-- =============================================================================
-- PieceFacile Database
-- Module      : Communication
-- Table       : conversations
-- Description : Chat conversations between buyers and shops
-- =============================================================================

CREATE TABLE conversations (

    id BIGSERIAL PRIMARY KEY,

    request_id BIGINT NOT NULL
        REFERENCES requests(id)
        ON DELETE CASCADE,

    offer_id BIGINT NOT NULL
        REFERENCES offers(id)
        ON DELETE CASCADE,

    buyer_profile_id UUID NOT NULL
        REFERENCES profiles(id)
        ON DELETE CASCADE,

    shop_id BIGINT NOT NULL
        REFERENCES shops(id)
        ON DELETE CASCADE,

    last_message_at TIMESTAMPTZ,

    buyer_last_read_at TIMESTAMPTZ,

    seller_last_read_at TIMESTAMPTZ,

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    CONSTRAINT uq_conversation_offer
        UNIQUE (offer_id)

);

COMMENT ON TABLE conversations IS
'Stores chat conversations created after a seller submits an offer.';
