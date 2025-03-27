--ex1 
select name
from students
where marks > 75
order by right(name,3), ID
--ex2
select user_id,
concat (upper(left(name,1)), lower(substring(name from 2))) as name
from users
order by user_id
--ex3
SELECT manufacturer,
'$'||round (sum(total_sales)/1000000,0)||' '|| 'million' as sale
from pharmacy_sales
group by manufacturer
--ex4 
SELECT 
extract (month from submit_date) as mth,
product_id,
round(avg(stars),2) as avg_stars
from reviews
group by mth,product_id
order by mth, product_id ASC 
--ex5
SELECT 
sender_id,
count(message_id) as message_count
from messages
where 
extract (month from sent_date) = 8 AND
extract (year from sent_date) = 2022
GROUP BY sender_id
ORDER BY message_count DESC
limit 2
--ex6
select tweet_id
from tweets
where length(content) > 15 
--ex7
select
activity_date as day,
count(distinct(user_id)) as active_users
from activity
where activity_date between '2019-06-28' and '2019-07-27'
group by activity_date
--ex8 
select
count(distinct(id)) as employees
from employees
where
extract(month from joining_date) between 1 and 7 and
extract(year from joining_date) = 2022
group by joining_date
--ex9 
select
first_name,
position('a' in first_name) as position
from worker
where first_name = 'Amitah'
--ex10
SELECT 
    title, 
   REGEXP_SUBSTR(title, '[0-9]{4}') AS vintage_year
FROM winemag_p2
WHERE country = 'Macedonia';
--REGEXP_SUBSTR(title, '[0-9]{4}') → Extracts the first 4-digit number (which represents the year) from the title column.
