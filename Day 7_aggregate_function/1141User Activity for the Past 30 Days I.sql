select 
    activity_date as day,
    count(distinct user_id) as active_users
from Activity
where activity_date between dateadd(d, -30, '2019-07-27') and '2019-07-27'
group by activity_date