/* Write your T-SQL query statement below */


select actor_id,director_id
from ActorDirector
group by director_id, actor_id
having count(timestamp) >= 3
   