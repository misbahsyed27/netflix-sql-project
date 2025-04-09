-- View original dataset
SELECT * FROM netflix;

-- Create a staging table for cleaning
CREATE TABLE netflix_stag1 LIKE netflix;

-- Verify structure
SELECT * FROM netflix_stag1;

-- Insert data into staging table
INSERT INTO netflix_stag1
SELECT * FROM netflix;

-- Check for NULLs in key fields
SELECT * 
FROM netflix_stag1
WHERE show_id IS NULL
   OR `type` IS NULL
   OR title IS NULL
   OR director IS NULL
   OR country IS NULL
   OR date_added IS NULL
   OR release_year IS NULL
   OR rating IS NULL
   OR duration IS NULL
   OR listed_in IS NULL;

-- Check for duplicate show IDs
SELECT show_id, COUNT(show_id) AS count
FROM netflix_stag1
GROUP BY show_id
HAVING count > 1;

-- Check for duplicate titles (could have different versions)
SELECT title, COUNT(title) AS count
FROM netflix_stag1
GROUP BY title
HAVING count > 1;

-- Convert string date_added to DATE format
SELECT date_added, STR_TO_DATE(`date_added`, '%m/%d/%Y') FROM netflix_stag1;

UPDATE netflix_stag1
SET date_added = STR_TO_DATE(`date_added`, '%m/%d/%Y');

-- Modify date_added column data type to DATE
ALTER TABLE netflix_stag1
MODIFY COLUMN date_added DATE;

-- Trim whitespace in selected columns
UPDATE netflix_stag1
SET title = TRIM(title),
    director = TRIM(director),
    country = TRIM(country),
    rating = TRIM(rating),
    listed_in = TRIM(listed_in);

-- Split duration into value and unit
ALTER TABLE netflix_stag1
ADD COLUMN duration_value INT,
ADD COLUMN duration_unit VARCHAR(50);

UPDATE netflix_stag1
SET duration_value = CAST(SUBSTRING_INDEX(duration, ' ', 1) AS UNSIGNED),
    duration_unit = SUBSTRING_INDEX(duration, ' ', -1);
