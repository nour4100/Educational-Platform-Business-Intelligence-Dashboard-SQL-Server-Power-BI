BULK INSERT raw_users
FROM 'C:\Users\nour\Desktop\nafham dataset\nafham_bi_project_users.csv'
WITH (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
ROWTERMINATOR ='0x0a',
TABLOCK
);


BULK INSERT raw_video_views
FROM 'C:\Users\nour\Desktop\nafham dataset\nafham_bi_project_video_views.csv'
WITH (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
ROWTERMINATOR ='0x0a',
TABLOCK
);



BULK INSERT raw_subscriptions
FROM 'C:\Users\nour\Desktop\nafham dataset\nafham_bi_project_subscriptions.csv'
WITH (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
ROWTERMINATOR ='0x0a',
TABLOCK
);



BULK INSERT raw_videos
FROM 'C:\Users\nour\Desktop\nafham dataset\nafham_bi_project_videos.csv'
WITH (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
ROWTERMINATOR ='0x0a',
TABLOCK
);
