)-- =============================================================================
-- PieceFacile Database
-- File : 02_types.sql
-- Purpose : Shared ENUM types
-- ============================================================================

CREATE TYPE user_role AS ENUM (
'buyer',
'seller',
'admin'
);

CREATE TYPE seller_type AS ENUM (
'spare_parts_shop',
'specialist',
'la_casse'
);

CREATE TYPE verification_status AS ENUM (
'pending',
'approved',
'rejected',
'suspended'
);

CREATE TYPE request_status AS ENUM (
'draft',
'active',
'fulfilled',
'cancelled',
'expired'
);

CREATE TYPE visibility_scope AS ENUM (
'province_only',
'neighbor_provinces',
'national'
);

CREATE TYPE request_part_status AS ENUM (
'pending',
'fulfilled',
'cancelled'
);

CREATE TYPE condition_preference AS ENUM (
'any',
'new_only',
'used_only'
);

CREATE TYPE offer_status AS ENUM (
'sent',
'viewed',
'negotiating',
'accepted',
'declined',
'cancelled',
'closed_by_other'
);

CREATE TYPE availability_status AS ENUM (
'available',
'available_later',
'not_available'
);

CREATE TYPE part_condition AS ENUM (
'new',
'used'
);

CREATE TYPE deal_status AS ENUM (
'active',
'completed',
'cancelled'
);

CREATE TYPE report_status AS ENUM (
'pending',
'under_review',
'resolved',
'dismissed'
);

CREATE TYPE notification_type AS ENUM (
'new_offer',
'new_message',
'deal_created',
'deal_completed',
'deal_cancelled',
'request_expired'
);

CREATE TYPE document_status AS ENUM (
'pending',
'approved',
'rejected'
