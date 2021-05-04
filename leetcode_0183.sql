# Write your MySQL query statement below
select Name as `Customers` from (
    select c.Id as Id, c.Name as Name, o.Id as oid
    from Customers as c
    left join Orders as o
    on c.Id = o.CustomerId
) as temp 
where oid is Null
