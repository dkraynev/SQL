# Write your MySQL query statement below
SELECT
    name AS Customers
FROM
    Customers C
    LEFT JOIN
        Orders O
    ON C.id = O.customerId
WHERE
    O.customerId IS NULL;