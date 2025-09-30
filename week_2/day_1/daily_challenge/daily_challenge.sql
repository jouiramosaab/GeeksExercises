select count(*) from actors 

INSERT INTO actors (first_name, last_name, birth_day, number_oscars)
VALUES(NULL,NULL,NULL,0)


Any column defined as NOT NULL cannot contain NULL when inserting data.
To insert a new actor, you must provide valid values for all NOT NULL columns.