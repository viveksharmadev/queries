-- https://leetcode.com/problems/product-sales-analysis-ii/
# Write your MySQL query statement below
select product_id, SUM(quantity) as total_quantity
from Sales
group by product_id;
