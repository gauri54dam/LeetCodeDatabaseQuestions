/* Write your T-SQL query statement below */


select
    name,
    sum(
        case when distance is not null then distance
        else 0 end) as 'travelled_distance'
from Users u
left join Rides r
on u.id =  r.user_id
group by name
order by sum(distance) desc, name