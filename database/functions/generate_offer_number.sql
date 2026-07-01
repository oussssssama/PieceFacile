CREATE SEQUENCE offer_number_seq START 1000;

CREATE OR REPLACE FUNCTION generate_offer_number()
RETURNS TRIGGER AS $$
BEGIN
IF NEW.offer_number IS NULL THEN
NEW.offer_number :=
'OFF-' || nextval('offer_number_seq');
END IF;


RETURN NEW;


END;
$$ LANGUAGE plpgsql;
