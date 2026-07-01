CREATE TABLE offer_parts (
id BIGSERIAL PRIMARY KEY,


offer_id BIGINT NOT NULL
    REFERENCES offers(id)
    ON DELETE CASCADE,

request_part_id BIGINT NOT NULL
    REFERENCES request_parts(id),

availability_status availability_status NOT NULL,

condition part_condition,

price NUMERIC(12,2)
    NOT NULL
    DEFAULT 0,

notes TEXT,

created_at TIMESTAMPTZ DEFAULT NOW()


);
