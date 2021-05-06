# Write your MySQL query statement below
select s1.Score, count(distinct s2.score) as `Rank` 
from Scores as s1 
inner join Scores as s2 on s1.Score <= s2.Score 
group by s1.Id, s1.Score 
order by s1.Score desc;
