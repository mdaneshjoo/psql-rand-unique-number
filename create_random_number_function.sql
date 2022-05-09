CREATE OR REPLACE FUNCTION generate_uniqe_random_number(low INT ,high INT) 
RETURNS int AS $generate_uniqe_random_number$ 
	DECLARE
		randNumber int :=FLOOR(random()* (high-low + 1) + low); 
		i int := 0;
	BEGIN
		WHILE (SELECT rand FROM the_table WHERE rand = randNumber) IS NOT null AND i < 10 
		LOOP
			randNumber :=FLOOR(random()* (high-low + 1) + low); 
			RAISE NOTICE 'randNumber %',randNumber;
			RAISE NOTICE 'result in table %',(SELECT rand FROM the_table WHERE rand = randNumber);
			i := i+1;
		END LOOP;
		RETURN randNumber;
	END;
$generate_uniqe_random_number$ language 'plpgsql' STRICT;
		