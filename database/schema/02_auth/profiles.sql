-- =============================================================================
-- PieceFacile Database
-- Module : Authentication
-- Table  : profiles
-- =============================================================================

CREATE TABLE profiles (

    id UUID PRIMARY KEY
        REFERENCES auth.users(id)
        ON DELETE CASCADE,

    full_name VARCHAR(255) NOT NULL,

    email VARCHAR(255) UNIQUE,

    phone VARCHAR(50) UNIQUE,

    avatar_url TEXT,

    preferred_language VARCHAR(5) NOT NULL DEFAULT 'ar',

    state VARCHAR(50),

    is_admin BOOLEAN NOT NULL DEFAULT FALSE,

    is_active BOOLEAN NOT NULL DEFAULT TRUE,

    profile_completed_at TIMESTAMPTZ,

    last_login TIMESTAMPTZ,

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()

);

COMMENT ON TABLE profiles IS
'Stores public profile information for authenticated users.';

COMMENT ON COLUMN profiles.id IS
'References Supabase Auth user ID.';

COMMENT ON COLUMN profiles.preferred_language IS
'Preferred application language (ar or fr).';

COMMENT ON COLUMN profiles.is_admin IS
'Determines administrative privileges.';
