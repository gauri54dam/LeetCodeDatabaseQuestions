with cte as 
(
select customer_number, count(order_number) as ct,
rank() over (order by count(order_number) desc ) as 'rank'
from Orders
group by customer_number
)
select c.customer_number
from cte c
where  c.rank =1