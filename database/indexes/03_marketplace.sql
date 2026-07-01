CREATE INDEX idx_profiles_role
ON profiles(role);

CREATE INDEX idx_shops_wilaya
ON shops(wilaya_id);

CREATE INDEX idx_shops_status
ON shops(verification_status);

CREATE INDEX idx_shop_specializations_shop
ON shop_specializations(shop_id);

CREATE INDEX idx_shop_specializations_vehicle
ON shop_specializations(vehicle_category_id);

CREATE INDEX idx_shop_specializations_brand
ON shop_specializations(brand_id);

CREATE INDEX idx_shop_specializations_model
ON shop_specializations(model_id);

CREATE INDEX idx_shop_specializations_part_category
ON shop_specializations(part_category_id);

CREATE INDEX idx_offers_request
ON offers(request_id);

CREATE INDEX idx_offers_shop
ON offers(shop_id);

CREATE INDEX idx_offers_status
ON offers(status);

CREATE INDEX idx_deals_shop
ON deals(shop_id);

CREATE INDEX idx_messages_conversation
ON messages(conversation_id);

CREATE INDEX idx_notifications_profile
ON notifications(profile_id);

CREATE INDEX idx_notifications_read
ON notifications(read_at);

CREATE INDEX idx_reports_status
ON reports(status);
