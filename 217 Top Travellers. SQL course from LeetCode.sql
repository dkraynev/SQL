# Write your MySQL query statement below
WITH Rides2 AS(
SELECT
    user_id,
    SUM(distance) AS all_distance
FROM
    Rides
GROUP BY
    user_id
)

SELECT
    name,
    IF(all_distance IS NULL, 0, all_distance) AS travelled_distance
FROM
    Users
    LEFT JOIN
        Rides2
    ON user_id = id
ORDER BY
    travelled_distance DESC,
    name ASC;
    
    
