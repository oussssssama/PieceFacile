CREATE TABLE part_aliases (
id BIGSERIAL PRIMARY KEY,


part_id BIGINT NOT NULL
    REFERENCES parts(id)
    ON DELETE CASCADE,

alias_text VARCHAR(255) NOT NULL,

language_code VARCHAR(10),

frequency INTEGER DEFAULT 0,

is_approved BOOLEAN DEFAULT TRUE,

created_at TIMESTAMPTZ DEFAULT NOW()


);
