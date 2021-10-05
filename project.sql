--lets get started
select * from startups;

--2 total number of startups
select count(*) as 'Total number of Startups'
from startups;

--3 total value of all startups
select sum(valuation) as 'Total value of startups'
from startups;

--4 highes amnt raised by a startup
select max(raised) 
as 'Highest amt raised by startup'
from startups;

--5 max amt raised at seed stage
select max(raised) 
as 'Highest amt raised at seed stage'
from startups
where stage='Seed';

--6 olders company founding year
select min(founded) 
as 'Year olders company was founded in'
from startups;

--7 avg valuation
select avg(valuation) as "Average valuation"
from startups;

--8 average valuation per category
select category ,avg(valuation) as 'average valuation'
from startups
group by 1

--9
SELECT category, ROUND(AVG(valuation), 2)
FROM startups
GROUP BY category;


--10
SELECT category, ROUND(AVG(valuation), 2)
FROM startups
GROUP BY 1
order by 2 desc;


--11 categories n number of startups
select category,count(*) 
as 'Number of companies per category'
from startups
group by 1;

--12 cat. having more dan 3 startups
select category,count(*) 
as 'Number of companies per category'
from startups
group by 1
having count(*)> 3;

---13
select location,round(avg(employees),2) as 'Avg size of startup per location'
from startups
group by 1

---14
select location,round(avg(employees),2) as 'Avg size of startup per location'
from startups
group by 1
having round(avg(employees),2) >500


