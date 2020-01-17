# https://leetcode.com/problems/running-total-for-different-genders/
# Write your MySQL query statement below
select S2.gender, S2.day, SUM(S1.score_points) AS total
from Scores S1, Scores S2
where S1.gender = S2.gender
AND S1.day<=S2.day
group by S2.gender, S2.day
order by S2.gender, S2.day
