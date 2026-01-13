CREATE VIEW clean_subscriptions AS (
SELECT
subscription_id,
user_id,
plan_type,
revenue,
start_date
FROM raw_subscriptions
WHERE revenue IS NOT NULL AND revenue > 0
);