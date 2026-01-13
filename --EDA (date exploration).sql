--EDA (date exploration)

SELECT 
MIN(start_date) AS first_subscription,
MAX(start_date) AS last_subscription
FROM raw_subscriptions;



SELECT 
MIN(upload_date) AS first_upload,
MAX(upload_date) AS last_upload
FROM raw_videos;