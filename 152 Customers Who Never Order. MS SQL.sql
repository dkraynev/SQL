/* T-SQL */

SELECT
    name AS Customers 
FROM
    Customers C
    LEFT JOIN
        Orders O
    ON C.id = O.customerId
WHERE
    customerId IS NULL