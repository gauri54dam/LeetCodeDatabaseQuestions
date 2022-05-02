/* 

id is the primary key column for Customer table.
Each row of this table indicates the id of a customer, their name, and the id of the customer who referred them.

Write an SQL query to report the IDs of the customer that are not referred by the customer with id = 2.

Return the result table in any order.

*/


select 
    c.name 
from customer c
where c.referee_id != 2 
or c.referee_id is null;
