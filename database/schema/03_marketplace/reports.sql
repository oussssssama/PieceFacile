CREATE TABLE reports (
id BIGSERIAL PRIMARY KEY,


reporter_profile_id UUID NOT NULL
    REFERENCES profiles(id),

reported_shop_id BIGINT
    REFERENCES shops(id),

deal_id BIGINT
    REFERENCES deals(id),

reason VARCHAR(255),

details TEXT,

review_notes TEXT,

status report_status
    DEFAULT 'pending',

resolved_at TIMESTAMPTZ,

created_at TIMESTAMPTZ DEFAULT NOW()


);
