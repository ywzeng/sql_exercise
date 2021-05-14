# Write your MySQL query statement below
select Department, Employee, Salary
from (
    select d.Name as Department, e.Name as Employee, Salary, dense_rank() over (partition by e.DepartmentId order by Salary desc) as s_rank
    from Employee as e
    left join Department as d
    on e.DepartmentId = d.Id
    where d.Id is not Null
) as temp
where s_rank <= 3
