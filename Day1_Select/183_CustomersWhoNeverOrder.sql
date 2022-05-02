/* 

id is the primary key column for Customers table.
Each row of this table indicates the ID and name of a customer.

id is the primary key column for Orders table.
customerId is a foreign key of the ID from the Customers table.
Each row of this table indicates the ID of an order and the ID of the customer who ordered it.


Write an SQL query to report all customers who never order anything.
Return the result table in any order.

*/


select 
    c.name as Customers
from Customers c
left join Orders o
on c.id = o.customerId
where o.customerId is null