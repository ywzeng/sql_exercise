# Write your MySQL query statement below
select
    Request_at as `Day`,
    round(count(if(Status != 'completed', Status, Null)) / count(*), 2) as `Cancellation Rate`
from
    Trips as t
left join Users as c on t.Client_Id = c.Users_Id
left join Users as d on t.Driver_Id = d.Users_Id
where c.Banned = 'No' and d.Banned = 'No' and (Request_at between '2013-10-01' and '2013-10-03')
group by Request_at
