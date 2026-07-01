CREATE TABLE models (
id BIGSERIAL PRIMARY KEY,


brand_id BIGINT NOT NULL
    REFERENCES brands(id)
    ON DELETE CASCADE,

name VARCHAR(150) NOT NULL,

slug VARCHAR(150) NOT NULL,

production_start_year SMALLINT,

production_end_year SMALLINT,

is_popular BOOLEAN DEFAULT FALSE,

is_active BOOLEAN DEFAULT TRUE,

created_at TIMESTAMPTZ DEFAULT NOW(),

UNIQUE(brand_id, name)


);
