CREATE OR REPLACE FUNCTION generate_uniqe_random_number() 
RETURNS int AS $generate_uniqe_random_number$ 
	DECLARE
		randNumber int :=rand_number();
		i int := 0;
	BEGIN
		WHILE (SELECT rand FROM the_table WHERE rand = randNumber) IS NOT null AND i < 5 
		LOOP
			randNumber :=rand_number(); 
			RAISE NOTICE 'randNumber %',randNumber;
			RAISE NOTICE 'result in table %',(SELECT rand FROM the_table WHERE rand = randNumber);
			i := i+1;
		END LOOP;
		IF (SELECT rand FROM the_table WHERE rand = randNumber) IS NOT null THEN
			RAISE EXCEPTION 'cant generate uniqe random number any more!';
		END IF;
		RETURN randNumber;
	END;
$generate_uniqe_random_number$ language 'plpgsql' STRICT;