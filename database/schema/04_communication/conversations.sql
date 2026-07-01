CREATE TABLE conversations (
id BIGSERIAL PRIMARY KEY,


request_id BIGINT NOT NULL
    REFERENCES requests(id),

offer_id BIGINT NOT NULL
    REFERENCES offers(id),

buyer_profile_id UUID NOT NULL
    REFERENCES profiles(id),

shop_id BIGINT NOT NULL
    REFERENCES shops(id),

created_at TIMESTAMPTZ DEFAULT NOW(),

UNIQUE(offer_id)


);
