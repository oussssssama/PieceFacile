-- =============================================================================
-- PieceFacile Database Schema
-- =============================================================================
-- Table       :
-- Module      :
-- Description :
--
-- Dependencies:
--
-- Referenced by:
--
-- Author      : PieceFacile
-- License     : MIT
-- =============================================================================

BEGIN;

CREATE TABLE IF NOT EXISTS table_name (

    id BIGSERIAL PRIMARY KEY,

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()

);

COMMENT ON TABLE table_name IS '';

COMMIT;
