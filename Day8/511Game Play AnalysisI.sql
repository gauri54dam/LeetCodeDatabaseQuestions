/* Write your T-SQL query statement below */

with cte as (
select player_id, event_date,
rank() over (partition by player_id order by event_date) as 'rank'
from Activity
)
select player_id, event_date as 'first_login'
from cte c
where c.rank =1 
