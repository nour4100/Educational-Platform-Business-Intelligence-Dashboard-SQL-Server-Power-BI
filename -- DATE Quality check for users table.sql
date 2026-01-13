-- DATE Quality check for users table
SELECT
user_id,
COUNT(*)
FROM raw_users
GROUP BY user_id
HAVING COUNT(*) > 1

SELECT
*
FROM raw_users
WHERE country != TRIM(country)
OR grade != TRIM(grade)
OR device_type != TRIM(device_type)


SELECT
*
FROM raw_users
WHERE user_id IS NULL
OR country IS NULL
OR grade IS NULL
OR device_type IS NULL
OR signup_date IS NULL

SELECT *
FROM raw_users
WHERE signup_date > GETDATE();