# Write your MySQL query statement below
SELECT
    session_id
FROM
    Playback P
    LEFT JOIN
        Ads A
    ON timestamp BETWEEN start_time AND end_time AND P.customer_id = A.customer_id
WHERE
    A.customer_id IS NULL;