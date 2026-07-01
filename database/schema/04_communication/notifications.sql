-- =============================================================================
-- PieceFacile Database
-- Module      : Communication
-- Table       : notifications
-- Description : User notifications
-- =============================================================================

CREATE TABLE notifications (

    id BIGSERIAL PRIMARY KEY,

    profile_id UUID NOT NULL
        REFERENCES profiles(id)
        ON DELETE CASCADE,

    type notification_type NOT NULL,

    title VARCHAR(255) NOT NULL,

    body TEXT NOT NULL,

    reference_type VARCHAR(50),

    reference_id BIGINT,

    read_at TIMESTAMPTZ,

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()

);

COMMENT ON TABLE notifications IS
'Stores notifications sent to users.';

COMMENT ON COLUMN notifications.reference_type IS
'Entity type related to the notification (request, offer, deal, message...).';

COMMENT ON COLUMN notifications.reference_id IS
'Identifier of the related entity.';
