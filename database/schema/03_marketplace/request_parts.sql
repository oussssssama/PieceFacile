CREATE TABLE request_parts (
id BIGSERIAL PRIMARY KEY,


request_id BIGINT NOT NULL
    REFERENCES requests(id)
    ON DELETE CASCADE,

part_category_id BIGINT
    REFERENCES part_categories(id),

part_id BIGINT
    REFERENCES parts(id),

custom_part_name VARCHAR(255),

description TEXT,

quantity INTEGER NOT NULL DEFAULT 1
CHECK (quantity > 0),

part_condition_preference condition_preference
    DEFAULT 'any',

status request_part_status
    DEFAULT 'pending',

created_at TIMESTAMPTZ DEFAULT NOW()


);
