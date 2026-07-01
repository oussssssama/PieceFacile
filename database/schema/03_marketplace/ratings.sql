-- =============================================================================
-- PieceFacile Database
-- Module      : Marketplace
-- Table       : ratings
-- Description : Buyer ratings for completed marketplace deals
-- =============================================================================

CREATE TABLE ratings (

    id BIGSERIAL PRIMARY KEY,

    deal_id BIGINT NOT NULL
        REFERENCES deals(id)
        ON DELETE CASCADE,

    reviewer_profile_id UUID NOT NULL
        REFERENCES profiles(id)
        ON DELETE CASCADE,

    reviewed_shop_id BIGINT NOT NULL
        REFERENCES shops(id)
        ON DELETE CASCADE,

    rating INTEGER NOT NULL,

    comment VARCHAR(500),

    is_visible BOOLEAN NOT NULL DEFAULT TRUE,

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    CONSTRAINT chk_rating_value
        CHECK (rating BETWEEN 1 AND 5),

    CONSTRAINT uq_rating_per_deal
        UNIQUE (deal_id, reviewer_profile_id)

);

COMMENT ON TABLE ratings IS
'Stores buyer ratings submitted after completed deals.';

COMMENT ON COLUMN ratings.rating IS
'Rating value from 1 to 5 stars.';
