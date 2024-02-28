-- Weather Observation Station 3
Select distinct city from station
where id %2=0

 -- Weather Observation Station 4 
SELECT COUNT(CITY)- COUNT(DISTINCT CITY) 
FROM STATION

--the Blunder
SELECT CEIL(AVG(SALARY) - AVG(REPLACE(SALARY,'0',''))) 
FROM EMPLOYEES

--Compressed Mean [Alibaba SQL Interview Question]
SELECT ROUND (CAST (SUM(ITEM_COUNT*ORDER_OCCURRENCES)/SUM(ORDER_OCCURRENCES)AS DECIMAL),1) AS MEAN
FROM ITEMS_PER_ORDER

--Data Science Skills [LinkedIn SQL Interview Question]
SELECT candidate_id FROM CANDIDATES
WHERE SKILL IN ('Python','Tableau', 'PostgreSQL')
GROUP BY candidate_id
HAVING COUNT(SKILL IN ('Python','Tableau', 'PostgreSQL'))=3

--Average Post Hiatus (Part 1) [Facebook SQL Interview Question]
SELECT user_id,
DATE(MAX(post_date))-DATE(min(post_date)) as days_between
FROM posts
WHERE post_date >='2021-01-01'and post_date<'2022-01-01'
GROUP BY user_id
having COUNT(post_id)>=2

--Cards Issued Difference [JPMorgan Chase SQL Interview Question]
SELECT CARD_NAME,
MAX (ISSUED_aMOUNT)-MIN (ISSUED_AMOUNT) AS DIFFERENCE
FROM MONTHLY_CARDS_ISSUED
GROUP BY CARD_NAME
ORDER BY DIFFERENCE DESC

-- Pharmacy Analytics (Part 2) [CVS Health SQL Interview Question]
SELECT manufacturer,
COUNT(drug) AS drug_count,
abs (SUM(cogs-total_sales)) as total_loss
from pharmacy_sales
WHERE total_sales<cogs
GROUP BY manufacturer
ORDER BY total_loss DESC

--620. Not Boring Movies
select * from Cinema
where id %2=1 and description<>'boring'
order by rating desc

--2356. Number of Unique Subjects Taught by Each Teacher
select teacher_id,
COUNT(DISTINCT subject_id) as cnt
from Teacher
GROUP BY teacher_id

--1729. Find Followers Count
SELECT USER_ID,
COUNT(follower_id) AS  followers_count
FROM Followers
GROUP BY USER_ID
ORDER BY USER_ID ASC

--596. Classes More Than 5 Students
SELECT CLASS FROM Courses
GROUP BY  CLASS
HAVING COUNT(student)>=5


