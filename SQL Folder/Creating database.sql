--Creating a database......movie_product

CREATE DATABASE MOVIE_PROJECT;
--Database created successfully

-- accesing the database "movie_project"
USE movie_project;

--CREATING SCHEMA; bronze, silver, gold
-- The code below will create a new schema
--but if there exit a schema with the same name "bronze, silver, gold"
-- it will remove and replace with the new schema "bronze, silver, gold".
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'bronze')
EXEC ('CREATE SCHEMA bronze');


IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'silver')
EXEC ('CREATE SCHEMA silver');

IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'gold')
EXEC ('CREATE SCHEMA gold');
