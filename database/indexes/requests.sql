CREATE INDEX idx_requests_buyer
ON requests(buyer_profile_id);

CREATE INDEX idx_requests_status
ON requests(status);

CREATE INDEX idx_requests_brand
ON requests(brand_id);

CREATE INDEX idx_requests_model
ON requests(model_id);

CREATE INDEX idx_requests_wilaya
ON requests(wilaya_id);

CREATE INDEX idx_requests_vehicle_category
ON requests(vehicle_category_id);

CREATE INDEX idx_request_parts_request
ON request_parts(request_id);

CREATE INDEX idx_request_parts_part
ON request_parts(part_id);

CREATE INDEX idx_request_parts_category
ON request_parts(part_category_id);
