--ex1
SELECT DISTINCT CITY FROM STATION WHERE MOD(ID,2)=0 
--ex2
SELECT 
COUNT(CITY) - COUNT(DISTINCT CITY) FROM STATION; 
--ex3
select 
ceiling (avg(salary) - avg(replace(salary,0,''))) from employees
--ex4
SELECT 
round (cast(sum(item_count*order_occurrences)/sum(order_occurrences) as decimal),1) as mean
FROM items_per_order;
--ex5
SELECT  candidate_id 
FROM candidates
where skill in ('Python', 'Tableau', 'PostgreSQL')
group by candidate_id
having count(skill)=3
order by candidate_id ASC  
--ex6 
SELECT user_id,
date(max (post_date)) - date(min(post_date)) as days_between
from posts
where post_date between '01/01/2021' and '01/01/2022'
group by user_id
having count(post_id) >= 2
--ex7 
select card_name, 
max(issued_amount)-min(issued_amount) as difference
from monthly_cards_issued
where issue_month between '1' and '12'
group by card_name 
order by difference DESC 
--ex8
SELECT manufacturer,
count(drug) as drug_count,
abs(sum(cogs)-sum(total_sales)) as total_loss
FROM pharmacy_sales
where total_sales < cogs
group by manufacturer
order by total_loss DESC 
