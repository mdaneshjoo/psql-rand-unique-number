CREATE OR REPLACE FUNCTION gRand() RETURNS trigger AS $gRand$
	BEGIN
		NEW.rand := generate_uniqe_random_number(111111,99999999);
    	RETURN NEW ;
	END;
$gRand$ LANGUAGE plpgsql;