CREATE TRIGGER trg_profiles_updated_at
BEFORE UPDATE ON profiles
FOR EACH ROW
EXECUTE FUNCTION set_updated_at();

CREATE TRIGGER trg_shops_updated_at
BEFORE UPDATE ON shops
FOR EACH ROW
EXECUTE FUNCTION set_updated_at();

CREATE TRIGGER trg_requests_updated_at
BEFORE UPDATE ON requests
FOR EACH ROW
EXECUTE FUNCTION set_updated_at();

CREATE TRIGGER trg_offers_updated_at
BEFORE UPDATE ON offers
FOR EACH ROW
EXECUTE FUNCTION set_updated_at();

CREATE TRIGGER trg_generate_request_number
BEFORE INSERT ON requests
FOR EACH ROW
EXECUTE FUNCTION generate_request_number();

CREATE TRIGGER trg_generate_offer_number
BEFORE INSERT ON offers
FOR EACH ROW
EXECUTE FUNCTION generate_offer_number();

CREATE TRIGGER trg_generate_deal_number
BEFORE INSERT ON deals
FOR EACH ROW
EXECUTE FUNCTION generate_deal_number();
