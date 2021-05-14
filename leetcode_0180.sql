# Write your MySQL query statement below
# Method 1
select distinct l1.Num as ConsecutiveNums
from Logs as l1, Logs as l2, Logs as l3
where l1.Id = l2.Id - 1 and l2.Id = l3.Id - 1 and l1.Num = l2.Num and l2.Num = l3.Num


# Write your MySQL query statement below
# Method 2
select distinct Num as ConsecutiveNums
from (
    select 
        *, 
        lead(Num, 1) over (order by Id) as Num2, 
        lead(Num, 2) over (order by Id) as Num3
    from
        Logs
) as temp
where
    Num = Num2 and Num2 = Num3
