CREATE TABLE shops (
id BIGSERIAL PRIMARY KEY,


owner_profile_id UUID NOT NULL UNIQUE
    REFERENCES profiles(id),

shop_name VARCHAR(255) NOT NULL,

description TEXT,

phone VARCHAR(50),

whatsapp VARCHAR(50),

address TEXT,

wilaya_id BIGINT NOT NULL
    REFERENCES wilayas(id),

logo_url TEXT,

cover_url TEXT,

seller_type seller_type NOT NULL,

verification_status verification_status
    DEFAULT 'pending',

approved_at TIMESTAMPTZ,

is_active BOOLEAN DEFAULT TRUE,

created_at TIMESTAMPTZ DEFAULT NOW(),

updated_at TIMESTAMPTZ DEFAULT NOW(),

deleted_at TIMESTAMPTZ


);
