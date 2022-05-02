/* Write your T-SQL query statement below */

-- group by sell_date
-- count of product
-- horizontal reporting 
with cte as (
select
    sell_date,
    product
from Activities
group by sell_date, product
    )
    select sell_date, 
            count(product) as num_sold,
            string_agg(cast(product as varchar), ',') as products
    from cte
    group by sell_date
    order by sell_date
            

