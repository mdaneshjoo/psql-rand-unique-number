# psql-rand-unique-number
generate a random number and save it  when a row insert or update


# Order Of Runing SQL query's

 1. run `create_table` file query's to create a table (`the_table`) with one column (`rand`)
 2. now run `create_random_number_function` file query's to create a function for generating unique random number note that in this function table name and column name are important because we make query to check existing number if you have different name  the you need to change in in this file
 3. run `create_trigger` file query's to create a trigger . we use trigger to apply function in insert or update query's
 4. now we need to apply trigger to the table use query's in file `add_trigger_to_table`. note that we used table name in here so be careful
 5. now you can insert or update a row to generate and save a new unique random number
