# Write your MySQL query statement below
WITH Orders2 AS(
SELECT
    buyer_id,
    COUNT(buyer_id) orders_in_2019
FROM
    Orders
WHERE
    order_date BETWEEN '2019-01-01' AND '2019-12-31'
GROUP BY
    buyer_id
)

SELECT
    user_id AS buyer_id,
    join_date,
    IF(orders_in_2019 IS NULL, 0, orders_in_2019) AS orders_in_2019
FROM
    Users
    LEFT JOIN
        Orders2
    ON user_id = buyer_id;
        