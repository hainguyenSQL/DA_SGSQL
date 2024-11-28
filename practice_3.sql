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
