CREATE TABLE request_part_images (
id BIGSERIAL PRIMARY KEY,


request_part_id BIGINT NOT NULL
    REFERENCES request_parts(id)
    ON DELETE CASCADE,

image_url TEXT NOT NULL,

sort_order INTEGER DEFAULT 0,

created_at TIMESTAMPTZ DEFAULT NOW()


);
