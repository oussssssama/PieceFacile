CREATE TABLE shop_documents (
id BIGSERIAL PRIMARY KEY,


shop_id BIGINT NOT NULL
    REFERENCES shops(id)
    ON DELETE CASCADE,

document_type VARCHAR(100) NOT NULL,

file_url TEXT NOT NULL,

status document_status
    DEFAULT 'pending',

review_notes TEXT,

uploaded_at TIMESTAMPTZ DEFAULT NOW(),

reviewed_at TIMESTAMPTZ


);
