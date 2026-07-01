CREATE SEQUENCE request_number_seq START 1000;

CREATE OR REPLACE FUNCTION generate_request_number()
RETURNS TRIGGER AS $$
BEGIN
IF NEW.request_number IS NULL THEN
NEW.request_number :=
'REQ-' || nextval('request_number_seq');
END IF;


RETURN NEW;


END;
$$ LANGUAGE plpgsql;
