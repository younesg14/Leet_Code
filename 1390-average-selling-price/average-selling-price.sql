# Write your MySQL query statement below
SELECT P.product_id, IFNULL(ROUND(SUM(P.Price * U.units) / SUM(u.units), 2), 0) AS average_price
FROM Prices AS P
LEFT JOIN UnitsSold AS U ON P.product_id = U.product_id
AND u.purchase_date BETWEEN p.start_date AND p.end_date #If you use the WHERE clause here it will make the Join an Inner Join effecting the results of the table
GROUP BY P.product_id;

