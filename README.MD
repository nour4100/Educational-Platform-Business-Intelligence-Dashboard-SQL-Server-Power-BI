## Educational Platform Business Intelligence Dashboard SQL Server + Power BI

## 🧠 Project Motivation (Why this project?)

This project simulates a real-world Business Intelligence case for an educational platform.
The company has raw transactional data but lacks clear visibility into:

User engagement behavior

Revenue performance

Content effectiveness

Subscription trends

## 🎯 Goal:
Transform raw data into actionable business insights using SQL Server and Power BI

## ❓ Business Questions

This project answers key business questions such as:

How much revenue is generated and from where?

Which subscription plans perform best?

Who are the active users and how do they behave over time?

What content has the highest engagement?

Are there engagement or revenue drops across months?


## 1️⃣ Data Ingestion (SQL Server)

Created tables using DDL

> CREATE TABLE raw_users(
	user_id INT,
	country VARCHAR(50),
	grade VARCHAR(50),
	device_type VARCHAR(50),
	signup_date DATE
);

Loaded CSV files using BULK INSERT
>BULK INSERT raw_users
FROM 'C:\Users\nour\Desktop\nafham dataset\nafham_bi_project_users.csv'
WITH (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
ROWTERMINATOR ='0x0a',
TABLOCK
);

## 2️⃣ Exploratory Data Analysis (EDA)
Dimensions Exploration

Country
Device Type
Plan Type
Subject
>--EDA (Dimensions exploration)
SELECT
DISTINCT(plan_type)
FROM raw_subscriptions;

**Date Exploration**

Subscription start dates
Video upload dates
View dates

>SELECT 
MIN(start_date) AS first_subscription,
MAX(start_date) AS last_subscription
FROM raw_subscriptions;

**Measures Exploration**

Revenue
Watch Time
Completion

>SELECT
SUM(revenue) AS  total_revenue
FROM raw_subscriptions

**Magnitude Analysis**

Revenue by plan type
Revenue by country
Watch time by user

>SELECT
u.country,
SUM(s.revenue) AS total_revenue
FROM raw_users u
LEFT JOIN raw_subscriptions s
ON u.user_id = s.user_id
GROUP BY u.country
ORDER BY total_revenue DESC

# 3️⃣ Data Quality Checks

**Performed data quality validation on all tables**

Duplicate records

>SELECT
user_id,
COUNT(*)
FROM raw_users
GROUP BY user_id
HAVING COUNT(*) > 1

NULL values

>SELECT*
FROM raw_users
WHERE user_id IS NULL
OR country IS NULL
OR grade IS NULL
OR device_type IS NULL
OR signup_date IS NULL

Invalid grade format

Negative duration

# 4️⃣ Data Cleaning & Transformation (SQL Views)

**Instead of altering raw data, created clean views**

Examples:
Removed NULLs

Removed duplicates using ROW_NUMBER()

Converted grade from text to numeric

Standardized columns for analytics

>CREATE VIEW clean_users AS
WITH CTE_CLEAN AS (
SELECT
ROW_NUMBER() OVER (PARTITION BY user_id,country,grade,device_type,signup_date ORDER BY user_id) AS ROW_NUB,
user_id,
country,
CAST(RIGHT(grade,2)AS INT) AS grade,
device_type,
signup_date
FROM raw_users
WHERE user_id IS NOT NULL
AND country IS NOT NULL
AND grade IS NOT NULL
AND device_type IS NOT NULL
AND signup_date IS NOT NULL
)
SELECT*
FROM CTE_CLEAN
WHERE ROW_NUB = 1

## 5️⃣ Power BI – Data Modeling
Built a Star Schema

![modle](/image/3.webp)


## 6️⃣ DAX Measures & Calculations

Core Metrics

Total Revenue

Total Users

Subscription Users

Total Watch Hours

👥 Engagement Metrics

Active Users

Completed Views

Total Views

Completion Rate

**📌 DAX techniques used**

CALCULATE

DISTINCTCOUNT

COUNTROWS

DIVIDE


## 7️⃣ Dashboard Overview

![page 1](/image/image1.webp)
Designed for leadership & decision makers

**Key Insights**

Egypt generates the highest revenue

Yearly plans outperform others

Completion Rate ≈ 63%

Arabic content leads watch time

## 📈 Page 2 – User & Engagement Deep Dive

![page 2](/image/2.webp)
Designed for Product & Growth teams

**Key Insights**

Clear drop in engagement after August

Revenue follows the same trend


## 🏁 Final Outcome

this project demonstrates end-to-end BI skills

SQL data processing

Data modeling

DAX calculations

Dashboard storytelling

Business-driven insights

## 🛠️ Tools Used
SQL Server

Power BI

DAX


