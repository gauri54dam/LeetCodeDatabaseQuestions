
with cte as (
select 
    user_id,
    time_stamp as last_stamp,
    rank() over (partition by user_id order by time_stamp desc) as rank
from Logins
where year(time_stamp) = 2020
    ) 
    select 
        user_id,
        last_stamp
    from cte 
    where rank = 1 
        
