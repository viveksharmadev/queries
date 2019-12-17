// https://leetcode.com/problems/average-selling-price/
# Write your MySQL query statement below
select a.product_id as product_id, ROUND(SUM(a.price*b.units)/SUM(b.units),2)
as average_price
from Prices a, UnitsSold b
where a.product_id = b.product_id
and b.purchase_date 
BETWEEN a.start_date and a.end_date
group by a.product_id
