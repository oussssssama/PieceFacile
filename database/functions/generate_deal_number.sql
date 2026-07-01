CREATE SEQUENCE deal_number_seq START 1000;

CREATE OR REPLACE FUNCTION generate_deal_number()
RETURNS TRIGGER AS $$
BEGIN
IF NEW.deal_number IS NULL THEN
NEW.deal_number :=
'DEAL-' || nextval('deal_number_seq');
END IF;


RETURN NEW;


END;
$$ LANGUAGE plpgsql;
