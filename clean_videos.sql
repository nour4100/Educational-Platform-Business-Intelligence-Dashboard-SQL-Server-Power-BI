CREATE VIEW clean_videos AS(
SELECT
video_id,
subject,
CAST(RIGHT(grade,2)AS INT) AS grade,
duration_min,
upload_date
FROM raw_videos
)