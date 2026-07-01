CREATE TABLE notifications (
id BIGSERIAL PRIMARY KEY,


profile_id UUID NOT NULL
    REFERENCES profiles(id),

type notification_type NOT NULL,

reference_type VARCHAR(50),

reference_id BIGINT,

read_at TIMESTAMPTZ,

created_at TIMESTAMPTZ DEFAULT NOW()


);
