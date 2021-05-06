# Write your MySQL query statement below

select d.Name as Department, e.Name as Employee, e.Salary
from Employee as e
join (
    select DepartmentId, max(Salary) as Salary
    from Employee
    group by DepartmentId
) as temp on e.Salary = temp.Salary and e.DepartmentId = temp.DepartmentId
join Department as d on e.DepartmentId = d.Id
