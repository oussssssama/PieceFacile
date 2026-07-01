CREATE TABLE messages (
id BIGSERIAL PRIMARY KEY,


conversation_id BIGINT NOT NULL
    REFERENCES conversations(id)
    ON DELETE CASCADE,

sender_profile_id UUID NOT NULL
    REFERENCES profiles(id),

message_text TEXT NOT NULL,

read_at TIMESTAMPTZ,

deleted_at TIMESTAMPTZ,

created_at TIMESTAMPTZ DEFAULT NOW()


);
