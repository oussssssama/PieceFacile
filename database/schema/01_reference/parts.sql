CREATE TABLE parts (
id BIGSERIAL PRIMARY KEY,


part_category_id BIGINT NOT NULL
    REFERENCES part_categories(id),

name_ar VARCHAR(255),

name_fr VARCHAR(255),

name_en VARCHAR(255) NOT NULL,

search_keywords TEXT,

is_active BOOLEAN DEFAULT TRUE,

created_at TIMESTAMPTZ DEFAULT NOW()


);
