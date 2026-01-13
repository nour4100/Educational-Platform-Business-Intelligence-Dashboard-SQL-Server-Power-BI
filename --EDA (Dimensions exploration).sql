--EDA (Dimensions exploration)
SELECT
DISTINCT(plan_type)
FROM raw_subscriptions;

SELECT
DISTINCT(country)
FROM raw_users;

SELECT
DISTINCT(device_type)
FROM raw_users;


SELECT
DISTINCT(subject)
FROM raw_videos