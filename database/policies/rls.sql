ALTER TABLE profiles ENABLE ROW LEVEL SECURITY;
ALTER TABLE shops ENABLE ROW LEVEL SECURITY;
ALTER TABLE requests ENABLE ROW LEVEL SECURITY;
ALTER TABLE offers ENABLE ROW LEVEL SECURITY;
ALTER TABLE conversations ENABLE ROW LEVEL SECURITY;
ALTER TABLE messages ENABLE ROW LEVEL SECURITY;
ALTER TABLE deals ENABLE ROW LEVEL SECURITY;
ALTER TABLE ratings ENABLE ROW LEVEL SECURITY;
ALTER TABLE notifications ENABLE ROW LEVEL SECURITY;
ALTER TABLE reports ENABLE ROW LEVEL SECURITY;

-- =====================================================
-- BASIC PROFILE POLICY
-- =====================================================

CREATE POLICY profile_select_own
ON profiles
FOR SELECT
USING (auth.uid() = id);

CREATE POLICY profile_update_own
ON profiles
FOR UPDATE
USING (auth.uid() = id);

-- =====================================================
-- BASIC REQUEST POLICY
-- =====================================================

CREATE POLICY request_owner_access
ON requests
FOR ALL
USING (buyer_profile_id = auth.uid());

-- =====================================================
-- BASIC SHOP POLICY
-- =====================================================

CREATE POLICY shop_owner_access
ON shops
FOR ALL
USING (owner_profile_id = auth.uid());

