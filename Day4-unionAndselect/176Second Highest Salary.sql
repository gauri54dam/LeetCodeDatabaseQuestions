
select 
    max(e1.salary) as "SecondHighestSalary"
from Employee e1
where salary < 
(
select 
	max(e2.salary) 
from Employee e2
)