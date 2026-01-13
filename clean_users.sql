CREATE VIEW clean_users AS
WITH CTE_CLEAN AS (
SELECT
ROW_NUMBER() OVER (PARTITION BY user_id,country,grade,device_type,signup_date ORDER BY user_id) AS ROW_NUB,
user_id,
country,
CAST(RIGHT(grade,2)AS INT) AS grade,
device_type,
signup_date
FROM raw_users
WHERE user_id IS NOT NULL
AND country IS NOT NULL
AND grade IS NOT NULL
AND device_type IS NOT NULL
AND signup_date IS NOT NULL
)
SELECT
*
FROM CTE_CLEAN
WHERE ROW_NUB = 1