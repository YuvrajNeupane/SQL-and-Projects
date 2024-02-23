SELECT * FROM students.housingdata;
-- columns-- 
select year, month, west from housingdata;

-- without using *-- 
select year, month, month_name, south, west, midwest, northeast from housingdata;

-- Using as-- 
select month_name as 'Housing Data' from housingdata;

select * from housingdata;

-- capital first word--
select * from housingdata limit 3,5;

select * from housingdata where month = 1;

select * from housingdata where west >50;

select * from housingdata where south <=20;

select * from housingdata where month_name != 'january';

select * from housingdata where month_name < 'january';

select * from housingdata where month_name between 'j' and 'k' ;

select * from housingdata where month_name like 'j%' ;

select * from housingdata where month_name like '%a%' ;

select * from housingdata where month_name ='february' ;

select year, month_name, south, west, midwest, northeast, 
round(south+west+midwest+northeast,2) as 'total' from housingdata;