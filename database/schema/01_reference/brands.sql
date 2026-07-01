CREATE TABLE brands (
id BIGSERIAL PRIMARY KEY,


vehicle_category_id BIGINT NOT NULL
    REFERENCES vehicle_categories(id),

name VARCHAR(150) NOT NULL,

slug VARCHAR(150) NOT NULL,

is_popular BOOLEAN DEFAULT FALSE,

sort_order INTEGER DEFAULT 0,

is_active BOOLEAN DEFAULT TRUE,

created_at TIMESTAMPTZ DEFAULT NOW(),

UNIQUE(vehicle_category_id, name)


);
