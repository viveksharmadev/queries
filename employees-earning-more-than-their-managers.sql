// https://leetcode.com/problems/employees-earning-more-than-their-managers/
# Write your MySQL query statement below
select e1.Name AS Employee from Employee e1, Employee e2
where e1.ManagerId is not null AND 
      e1.ManagerId = e2.Id AND
      e1.Salary > e2.Salary 
