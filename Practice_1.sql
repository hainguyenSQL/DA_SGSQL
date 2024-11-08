--ex1
select NAME from CITY 
where CountryCode ="USA" and Population > 120000
--ex2
select * from CITY where COUNTRYCODE = "JPN"
--ex3
select city, state from station 
--ex4
select distinct city from station 
where city like 'a%' 
or city like 'e%' 
or city like 'i%' 
or city like 'o%' 
or city like 'u%'
--ex5
select distinct city from station 
where city like '%a' 
or city like '%e' 
or city like '%i' 
or city like '%o' 
or city like '%u'
--ex6 
select distinct CITY from STATION 
where city not like 'A%' 
and city not like 'E%' 
and city not like 'I%' 
and city not like 'O%' 
and city not like 'U%'
--ex7
select name from Employee 
order by name ASC
--ex8 
select name from Employee 
where salary > 2000 and months < 10 
order by employee_id ASC
--ex9 
select product_id from Products
where low_fats = "Y" and recyclable = "Y"
--ex10 
select name from Customer 
where referee_id is null or referee_id <> 2 
--ex11 


