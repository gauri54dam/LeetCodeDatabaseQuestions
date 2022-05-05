
select 
    w1.id
from weather w --current date
join weather w1 --previous date
on DATEADD(d,-1, w1.recordDate)  = w.recordDate
where w1.temperature > w.temperature;
