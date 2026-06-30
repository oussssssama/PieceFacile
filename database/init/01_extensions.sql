-- =============================================================================
-- PieceFacile
-- PostgreSQL Extensions
-- =============================================================================

CREATE EXTENSION IF NOT EXISTS pgcrypto;
CREATE EXTENSION IF NOT EXISTS unaccent;

COMMENT ON EXTENSION pgcrypto IS
'Cryptographic functions and UUID generation';

COMMENT ON EXTENSION unaccent IS
'Accent-insensitive text search';
