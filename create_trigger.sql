CREATE OR REPLACE FUNCTION gRand() RETURNS trigger AS $gRand$
	BEGIN
		NEW.rand := generate_uniqe_random_number();
    	RETURN NEW ;
	END;
$gRand$ LANGUAGE plpgsql;