-- =============================================================================
-- PieceFacile Database
-- Module : Reference
-- Table  : part_aliases
-- =============================================================================

CREATE TABLE part_aliases (

    id BIGSERIAL PRIMARY KEY,

    part_id BIGINT NOT NULL
        REFERENCES parts(id)
        ON DELETE CASCADE,

    alias_text VARCHAR(255) NOT NULL,

    language_code VARCHAR(10),

    frequency INTEGER NOT NULL DEFAULT 0,

    is_approved BOOLEAN NOT NULL DEFAULT TRUE,

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    CONSTRAINT uq_part_alias
        UNIQUE (part_id, alias_text, language_code),

    CONSTRAINT chk_part_alias_frequency
        CHECK (frequency >= 0)

);

COMMENT ON TABLE part_aliases IS
'Stores alternative names and marketplace terminology for spare parts.';

COMMENT ON COLUMN part_aliases.alias_text IS
'Alternative name used by buyers and sellers.';

COMMENT ON COLUMN part_aliases.frequency IS
'Number of times this alias has been detected or used.';
