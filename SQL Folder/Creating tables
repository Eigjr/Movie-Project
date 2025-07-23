---Creating tables in the bronze layer
-- first table is movie_details
TRUNCATE TABLE bronze.movie_details; 
--creating a new table inside the bronze layer
CREATE TABLE bronze.movie_details (
		Item_id INT,
		Movie_title VARCHAR(100),
		Release_date DATETIME,
		Imdb_url VARCHAR(100),
		Primary_genre VARCHAR(100)
);

-- second table is product_details
--
TRUNCATE TABLE bronze.product_details;
-- creating a new table inside the bronze layer
CREATE TABLE bronze.product_details(
		User_id INT,
		Item_id INT,
		Rating FLOAT,
		Transaction_Date DATETIME

);

--third table is product_details
--
TRUNCATE TABLE bronze.user_details;
-- creating a new table inside the bronze layer
CREATE TABLE bronze.user_details(
			user_id INT,
			age INT,
			Gender VARCHAR(25),
			Occupation VARCHAR(100),
			Zip_code VARCHAR(10)
);

---Creating tables in the silver layer
-- first table is movie_details
TRUNCATE TABLE silver.movie_details; 

--creating a new table inside the silver layer

CREATE TABLE silver.movie_details (
		Item_id INT,
		Movie_title VARCHAR(100),
		Release_date DATE,
		Imdb_url VARCHAR(100),
		Primary_genre VARCHAR(100)
);

-- second table is product_details
--
TRUNCATE TABLE silver.product_details;
-- creating a new table inside the silver layer
CREATE TABLE silver.product_details(
		User_id INT,
		Item_id INT,
		Rating FLOAT,
		Transaction_Date DATE

);
GO

--third table is product_details
--
TRUNCATE TABLE silver.user_details;
-- creating a new table inside the silver layer
CREATE TABLE silver.user_details(
			user_id INT,
			age INT,
			Gender VARCHAR(25),
			Occupation VARCHAR(100),
			Zip_code VARCHAR(10)
);
