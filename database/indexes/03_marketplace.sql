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

