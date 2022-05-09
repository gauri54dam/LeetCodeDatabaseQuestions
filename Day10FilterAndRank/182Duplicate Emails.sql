
with cte as(
select email,
row_number() over (partition by email order by email ) as rn
from Person
)
select distinct email as Email
from cte where rn > 1