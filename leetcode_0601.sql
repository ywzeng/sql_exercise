# Write your MySQL query statement below
select 
    distinct s1.*
from
    Stadium s1, Stadium s2, Stadium s3
where
    s1.people >= 100 and s2.people >= 100 and s3.people >= 100 
    and (
        (s1.id = s2.id - 1 and s2.id = s3.id - 1)
        or
        (s1.id = s2.id + 1 and s1.id = s3.id - 1)
        or
        (s1.id = s2.id + 1 and s2.id = s3.id + 1)
    )
order by s1.visit_date
