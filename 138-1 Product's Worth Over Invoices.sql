# Write your MySQL query statement below
WITH Invoice2 AS(
SELECT
    product_id,
    SUM(rest) AS rest,
    SUM(paid) AS paid,
    SUM(canceled) AS canceled,
    SUM(refunded) AS refunded
FROM
    Invoice
GROUP BY
    product_id
)

SELECT
    name,
    IFNULL(rest, 0) AS rest,
    IFNULL(paid, 0) AS paid,
    IFNULL(canceled, 0) AS canceled,
    IFNULL(refunded, 0) AS refunded
FROM
    Invoice2 I
    RIGHT JOIN
        Product P
    ON I.product_id = P.product_id
ORDER BY
    name;