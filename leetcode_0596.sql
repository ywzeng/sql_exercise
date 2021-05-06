# Write your MySQL query statement below
select class
from courses
group by class
having count(distinct student) >= 5


# Write your MySQL query statement below
select class
from (
    select class, count(distinct student) as stu_num
    from courses
    group by class
) as temp
where stu_num >= 5
