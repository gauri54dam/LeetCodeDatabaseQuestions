/* 
 Please write a DELETE statement and DO NOT write a SELECT statement.
 Write your T-SQL query statement below
 */


delete 
from Person
where id not in 
    (
        select d.id from (
            select 
                id,
                row_number() over (partition by email order by id) as rank
            from Person
            ) d 
        where d.rank = 1
        
    )
