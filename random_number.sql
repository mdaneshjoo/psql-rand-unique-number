CREATE OR REPLACE FUNCTION rand_number()
RETURNS int AS $rand_number$
    BEGIN
		RETURN CONCAT(FLOOR(random()* (123-987 + 1) + 987), FLOOR(random()* (123-987 + 1) + 987), FLOOR(random()* (12-98 + 1) + 98)); 
	END;
$rand_number$ language 'plpgsql' STRICT;