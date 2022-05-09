with cte as(
select 
    buyer_id,
    count(order_id) as orders_in_2019
from Orders 
where year(order_date) = 2019
group by buyer_id
    )select 
        c1.user_id as buyer_id,
        join_date,
        isnull(c.orders_in_2019,0) as orders_in_2019
    from cte c 
    right join Users c1
    on c.buyer_id = c1.user_id
    