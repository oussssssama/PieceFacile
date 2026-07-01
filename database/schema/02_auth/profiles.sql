CREATE TABLE profiles (
id UUID PRIMARY KEY
REFERENCES auth.users(id)
ON DELETE CASCADE,


role user_role NOT NULL,

full_name VARCHAR(255) NOT NULL,

phone VARCHAR(50),

avatar_url TEXT,

preferred_language VARCHAR(5)
    DEFAULT 'ar',

is_active BOOLEAN DEFAULT TRUE,

created_at TIMESTAMPTZ DEFAULT NOW(),

updated_at TIMESTAMPTZ DEFAULT NOW(),

deleted_at TIMESTAMPTZ


);
