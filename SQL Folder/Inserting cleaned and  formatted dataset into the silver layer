CREATE OR REPLACE PROCEDURE silver.load_movie_data()
LANGUAGE plpgsql
AS $$
BEGIN
	-- Raise notice before transformation
	RAISE NOTICE 'Doing basic transformation on the dataset before loading into the silver layer';

	-- Insert transformed User details
	INSERT INTO silver.user_details (
		user_id,
		age,
		gender,
		occupation,
		zip_code
	)
	SELECT 
		user_id,
		age,
		CASE
			WHEN UPPER(TRIM(gender)) = 'M' THEN 'Male'
			WHEN UPPER(TRIM(gender)) = 'F' THEN 'Female'
			ELSE 'N/A'
		END AS gender,
		UPPER(LEFT(occupation, 1)) || LOWER(SUBSTRING(occupation FROM 2)) AS occupation,
		zip_code
	FROM bronze.user_details;

	-- Insert transformed Product details
	INSERT INTO silver.product_details (
		user_id,
		item_id,
		rating,
		transaction_date	
	)
	SELECT 
		user_id,
		item_id,
		rating,
		to_timestamp(timestamp) AS transaction_date
	FROM bronze.product_details;

	-- Insert transformed Movie details
	INSERT INTO silver.movie_details (
		item_id,
		movies_title,
		release_date,
		imdb_url,
		primary_genre
	)
	SELECT 
		item_id,
		TRIM(movies_title),
		release_date,
		TRIM(imdb_url),
		TRIM(primary_genre)
	FROM bronze.movies_details;

	-- Final notice after transformation
	RAISE NOTICE 'Transformation is complete and dataset is successfully loaded into the silver layer';
END;
$$;
