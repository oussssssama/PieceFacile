CREATE TABLE deals (
id BIGSERIAL PRIMARY KEY,


deal_number VARCHAR(50)
    UNIQUE,

request_id BIGINT NOT NULL
    REFERENCES requests(id),

offer_id BIGINT NOT NULL
    REFERENCES offers(id),

buyer_profile_id UUID NOT NULL
    REFERENCES profiles(id),

shop_id BIGINT NOT NULL
    REFERENCES shops(id),

final_amount NUMERIC(12,2)
    NOT NULL
    DEFAULT 0,

status deal_status
    DEFAULT 'active',

accepted_at TIMESTAMPTZ,

buyer_confirmed_at TIMESTAMPTZ,

completed_at TIMESTAMPTZ,

cancelled_at TIMESTAMPTZ,

cancellation_reason TEXT,

created_at TIMESTAMPTZ DEFAULT NOW(),

deleted_at TIMESTAMPTZ,

UNIQUE(offer_id)


);
