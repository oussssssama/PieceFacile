-- =============================================================================
-- PieceFacile Database
-- Module : Marketplace
-- Table  : shops
-- =============================================================================

CREATE TABLE shops (

    id BIGSERIAL PRIMARY KEY,

    owner_user_id UUID NOT NULL
        REFERENCES profiles(id)
        ON DELETE CASCADE,

    shop_name VARCHAR(255) NOT NULL,

    shop_slug VARCHAR(255) NOT NULL UNIQUE,

    description TEXT,

    phone_number VARCHAR(50) NOT NULL,

    whatsapp_number VARCHAR(50),

    telegram_username VARCHAR(100),

    facebook_page_url TEXT,

    working_hours TEXT,

    wilaya_id BIGINT NOT NULL
        REFERENCES wilayas(id),

    latitude NUMERIC(9,6),

    longitude NUMERIC(9,6),

    address TEXT,

    logo_url TEXT,

    cover_url TEXT,

    seller_type seller_type NOT NULL,

    verification_status verification_status
        NOT NULL DEFAULT 'pending',

    commercial_register_number VARCHAR(100) UNIQUE,

    commercial_register_verified_at TIMESTAMPTZ,

    approved_at TIMESTAMPTZ,

    last_activity_at TIMESTAMPTZ,

    is_active BOOLEAN NOT NULL DEFAULT TRUE,

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    CONSTRAINT uq_shop_owner
        UNIQUE (owner_user_id)

);

COMMENT ON TABLE shops IS
'Stores seller shops participating in the PieceFacile marketplace.';

COMMENT ON COLUMN shops.owner_user_id IS
'User account that owns the shop.';

COMMENT ON COLUMN shops.verification_status IS
'Current shop verification status.';
