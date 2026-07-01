-- =============================================================================
-- PieceFacile Database
-- Module      : Marketplace
-- Table       : reports
-- Description : Reports submitted by users against shops or marketplace activity
-- =============================================================================

CREATE TABLE reports (

    id BIGSERIAL PRIMARY KEY,

    reporter_profile_id UUID NOT NULL
        REFERENCES profiles(id)
        ON DELETE CASCADE,

    reported_shop_id BIGINT
        REFERENCES shops(id)
        ON DELETE CASCADE,

    deal_id BIGINT
        REFERENCES deals(id)
        ON DELETE SET NULL,

    reason VARCHAR(255) NOT NULL,

    details TEXT,

    review_notes TEXT,

    reviewed_by UUID
        REFERENCES profiles(id)
        ON DELETE SET NULL,

    status report_status
        NOT NULL DEFAULT 'pending',

    resolved_at TIMESTAMPTZ,

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    CONSTRAINT chk_report_target
        CHECK (
            reported_shop_id IS NOT NULL
            OR deal_id IS NOT NULL
        )

);

COMMENT ON TABLE reports IS
'Stores reports submitted by users for moderation and dispute resolution.';

COMMENT ON COLUMN reports.reason IS
'Short category describing the reason for the report.';

COMMENT ON COLUMN reports.review_notes IS
'Internal notes written by moderators during the review process.';
