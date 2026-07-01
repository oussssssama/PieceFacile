-- =============================================================================
-- PieceFacile Database
-- Module : Reference
-- Table  : wilaya_neighbors
-- =============================================================================

CREATE TABLE wilaya_neighbors (

    id BIGSERIAL PRIMARY KEY,

    wilaya_id BIGINT NOT NULL
        REFERENCES wilayas(id)
        ON DELETE CASCADE,

    neighbor_wilaya_id BIGINT NOT NULL
        REFERENCES wilayas(id)
        ON DELETE CASCADE,

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    CONSTRAINT uq_wilaya_neighbors
        UNIQUE (wilaya_id, neighbor_wilaya_id),

    CONSTRAINT chk_wilaya_not_self
        CHECK (wilaya_id <> neighbor_wilaya_id)

);

COMMENT ON TABLE wilaya_neighbors IS
'Stores neighboring Algerian wilayas for geographic filtering and distance-based matching.';

COMMENT ON COLUMN wilaya_neighbors.wilaya_id IS
'Primary wilaya.';

COMMENT ON COLUMN wilaya_neighbors.neighbor_wilaya_id IS
'Adjacent neighboring wilaya.';
