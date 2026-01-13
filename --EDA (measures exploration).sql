--EDA (measures exploration)
SELECT
SUM(revenue) AS  total_revenue
FROM raw_subscriptions

SELECT 
AVG(CAST((right(grade,2))AS INT)) AS AVG_grade
FROM raw_users


SELECT
SUM(watch_time_min)/60 total_watch_time_hour
FROM raw_video_views