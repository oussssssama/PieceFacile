CREATE TABLE part_categories (
id BIGSERIAL PRIMARY KEY,


parent_id BIGINT
    REFERENCES part_categories(id),

name_ar VARCHAR(150) NOT NULL,

name_fr VARCHAR(150),

name_en VARCHAR(150),

slug VARCHAR(150) NOT NULL UNIQUE,

sort_order INTEGER DEFAULT 0,

is_active BOOLEAN DEFAULT TRUE,

created_at TIMESTAMPTZ DEFAULT NOW()


);
