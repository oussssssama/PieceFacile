-- =============================================================================
-- PieceFacile Database
-- File : 01_extensions.sql
-- Purpose : Install required PostgreSQL extensions
-- =============================================================================

CREATE EXTENSION IF NOT EXISTS pgcrypto;
CREATE EXTENSION IF NOT EXISTS unaccent;

COMMENT ON EXTENSION pgcrypto IS
'Cryptographic functions and UUID generation support.';

COMMENT ON EXTENSION unaccent IS
'Accent-insensitive text search support.';
