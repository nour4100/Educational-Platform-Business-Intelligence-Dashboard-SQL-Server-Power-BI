--DATE Quality check for subscriptions table
SELECT
subscription_id,
COUNT(*)
FROM raw_subscriptions
GROUP BY subscription_id
HAVING COUNT(*) > 1;


SELECT
*
FROM raw_subscriptions
WHERE plan_type != TRIM(plan_type)


SELECT
*
FROM raw_subscriptions
where subscription_id IS NULL
OR user_id  IS NULL
OR plan_type IS NULL
OR revenue IS NULL OR revenue < 0
OR start_date IS NULL



SELECT *
FROM raw_subscriptions
WHERE start_date > GETDATE();