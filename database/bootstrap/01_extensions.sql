-- =============================================================================
-- PieceFacile Database
-- Bootstrap - PostgreSQL Extensions
-- =============================================================================

CREATE EXTENSION IF NOT EXISTS pgcrypto;

COMMENT ON EXTENSION pgcrypto IS
'Provides cryptographic functions and UUID generation support.';
