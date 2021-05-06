# Write your MySQL query statement below
select (
    case
        when mod(id, 2) = 0 then id - 1     # even 
        when mod(id, 2) != 0 and sc.c != id then id + 1     # odd && last entry
        else id
    end
) as id, student
from seat, (
    select count(*) as c
    from seat
) as sc
order by id
