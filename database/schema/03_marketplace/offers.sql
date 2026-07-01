CREATE TABLE offers (
id BIGSERIAL PRIMARY KEY,

  
offer_number VARCHAR(50) UNIQUE,

request_id BIGINT NOT NULL
    REFERENCES requests(id),

shop_id BIGINT NOT NULL
    REFERENCES shops(id),

status offer_status
    DEFAULT 'sent',

seller_message TEXT,

delivery_notes TEXT,

total_amount NUMERIC(12,2)
    DEFAULT 0,

expires_at TIMESTAMPTZ,

accepted_at TIMESTAMPTZ,

created_at TIMESTAMPTZ DEFAULT NOW(),

updated_at TIMESTAMPTZ DEFAULT NOW(),

deleted_at TIMESTAMPTZ,

UNIQUE(request_id, shop_id)


