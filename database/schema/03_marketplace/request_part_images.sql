-- =============================================================================
-- PieceFacile Database
-- Module      : Marketplace
-- Table       : request_part_images
-- Description : Images attached to requested spare parts
-- =============================================================================

CREATE TABLE request_part_images (

    id BIGSERIAL PRIMARY KEY,

    request_part_id BIGINT NOT NULL
        REFERENCES request_parts(id)
        ON DELETE CASCADE,

    image_url TEXT NOT NULL,

    sort_order INTEGER NOT NULL DEFAULT 0,

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    CONSTRAINT chk_request_part_images_sort_order
        CHECK (sort_order >= 0)

);

COMMENT ON TABLE request_part_images IS
'Stores images uploaded for requested spare parts.';

COMMENT ON COLUMN request_part_images.image_url IS
'Public Supabase Storage URL of the uploaded image.';
