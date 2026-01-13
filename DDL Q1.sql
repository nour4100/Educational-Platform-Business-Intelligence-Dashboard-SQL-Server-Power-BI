CREATE TABLE raw_users(
	user_id INT,
	country VARCHAR(50),
	grade VARCHAR(50),
	device_type VARCHAR(50),
	signup_date DATE
);


CREATE TABLE raw_videos(
    video_id INT,
    subject VARCHAR(50),
    grade VARCHAR(20),
    duration_min INT,
    upload_date DATE
);


CREATE TABLE raw_video_views(
    view_id INT,
    user_id INT,
    video_id INT,
    watch_time_min INT,
    completed VARCHAR(5),
    view_date DATE
);



CREATE TABLE raw_subscriptions (
    subscription_id INT,
    user_id INT,
    plan_type VARCHAR(20),
    revenue DECIMAL(10,2),
    start_date DATE
);

