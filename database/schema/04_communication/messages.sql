-- =============================================================================
-- PieceFacile Database
-- Module      : Communication
-- Table       : messages
-- Description : Messages exchanged inside conversations
-- =============================================================================

CREATE TABLE messages (

    id BIGSERIAL PRIMARY KEY,

    conversation_id BIGINT NOT NULL
        REFERENCES conversations(id)
        ON DELETE CASCADE,

    sender_profile_id UUID NOT NULL
        REFERENCES profiles(id)
        ON DELETE CASCADE,

    message_text TEXT NOT NULL,

    attachment_url TEXT,

    read_at TIMESTAMPTZ,

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    CONSTRAINT chk_message_not_empty
        CHECK (
            LENGTH(TRIM(message_text)) > 0
            OR attachment_url IS NOT NULL
        )

);

COMMENT ON TABLE messages IS
'Stores chat messages exchanged between buyers and sellers.';

COMMENT ON COLUMN messages.attachment_url IS
'Optional attachment stored in Supabase Storage.';
