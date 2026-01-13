--EDA (magnitude analysis)

SELECT
plan_type,
SUM(revenue) AS total_revenue
FROM raw_subscriptions
GROUP BY plan_type
ORDER BY total_revenue DESC

SELECT
user_id,
SUM(revenue) AS total_revenue
FROM raw_subscriptions
GROUP BY user_id
ORDER BY total_revenue DESC



SELECT
u.country,
SUM(s.revenue) AS total_revenue
FROM raw_users u
LEFT JOIN raw_subscriptions s
ON u.user_id = s.user_id
GROUP BY u.country
ORDER BY total_revenue DESC


SELECT
user_id,
SUM(watch_time_min) total_watch_time_for_user
FROM raw_video_views
GROUP BY user_id
ORDER BY total_watch_time_for_user DESC