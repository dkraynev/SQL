# Write your MySQL query statement below
WITH Orders2 AS(
SELECT
    customer_number,
    COUNT(customer_number) amount
FROM
    Orders
GROUP BY
    customer_number
)

SELECT
    customer_number
FROM
    Orders2
ORDER BY
    amount DESC
LIMIT 1;