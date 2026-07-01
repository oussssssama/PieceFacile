CREATE TABLE ratings (
id BIGSERIAL PRIMARY KEY,


deal_id BIGINT NOT NULL
    REFERENCES deals(id),

reviewer_profile_id UUID NOT NULL
    REFERENCES profiles(id),

reviewed_shop_id BIGINT NOT NULL
    REFERENCES shops(id),

rating INTEGER NOT NULL,

comment TEXT,

is_visible BOOLEAN DEFAULT TRUE,

created_at TIMESTAMPTZ DEFAULT NOW(),

CHECK (rating BETWEEN 1 AND 5),

UNIQUE(deal_id, reviewer_profile_id)


);
