CREATE OR REPLACE  trigger randNumGen
before insert on the_table
for each row execute procedure grand();