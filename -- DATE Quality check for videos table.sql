-- DATE Quality check for videos table

SELECT
video_id,
COUNT(*)
FROM raw_videos
GROUP BY video_id
HAVING COUNT(*) > 1

SELECT
*
FROM raw_videos
WHERE subject != TRIM(subject)
OR subject IS NULL
OR duration_min < 0