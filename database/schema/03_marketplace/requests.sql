CREATE TABLE requests (
id BIGSERIAL PRIMARY KEY,


request_number VARCHAR(50) UNIQUE,

buyer_profile_id UUID NOT NULL
    REFERENCES profiles(id),

vehicle_category_id BIGINT NOT NULL
    REFERENCES vehicle_categories(id),

brand_id BIGINT NOT NULL
    REFERENCES brands(id),

model_id BIGINT NOT NULL
    REFERENCES models(id),

year SMALLINT NOT NULL,

wilaya_id BIGINT NOT NULL
    REFERENCES wilayas(id),

visibility_scope visibility_scope NOT NULL,

status request_status DEFAULT 'draft',

expires_at TIMESTAMPTZ,

created_at TIMESTAMPTZ DEFAULT NOW(),

updated_at TIMESTAMPTZ DEFAULT NOW(),

deleted_at TIMESTAMPTZ


);
