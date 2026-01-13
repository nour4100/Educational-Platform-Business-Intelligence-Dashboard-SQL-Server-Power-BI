-- DATE Quality check for video_views table
SELECT
view_id,
COUNT(*)
FROM raw_video_views
GROUP BY view_id
HAVING COUNT(*) > 1

SELECT
*
FROM raw_video_views
WHERE view_id IS NULL
OR user_id IS NULL
OR video_id IS NULL
OR watch_time_min IS NULL
OR completed IS NULL
OR view_date IS NULL