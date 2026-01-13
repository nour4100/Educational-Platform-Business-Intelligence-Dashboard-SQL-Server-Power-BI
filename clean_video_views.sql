CREATE VIEW clean_video_views AS(
SELECT
view_id,
user_id,
video_id,
watch_time_min,
completed,
view_date
FROM raw_video_views
WHERE view_id IS NOT NULL
AND user_id IS NOT NULL
AND video_id IS NOT NULL
AND watch_time_min IS NOT NULL
AND completed IS NOT NULL
AND view_date IS NOT NULL
)