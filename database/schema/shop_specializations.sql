CREATE TABLE shop_specializations (
id BIGSERIAL PRIMARY KEY,


shop_id BIGINT NOT NULL
    REFERENCES shops(id)
    ON DELETE CASCADE,

vehicle_category_id BIGINT
    REFERENCES vehicle_categories(id),

part_category_id BIGINT
    REFERENCES part_categories(id),

brand_id BIGINT
    REFERENCES brands(id),

model_id BIGINT
    REFERENCES models(id),

created_at TIMESTAMPTZ DEFAULT NOW()


);
