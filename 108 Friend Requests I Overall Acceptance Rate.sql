# Write your MySQL query statement below
WITH RA AS(
SELECT
    requester_id,
    accepter_id
FROM
    RequestAccepted
GROUP BY
    requester_id,
    accepter_id
),

FR AS(
SELECT
    sender_id,
    send_to_id
FROM
    FriendRequest
GROUP BY
    sender_id,
    send_to_id
)

SELECT
    IFNULL(ROUND( 
    (SELECT COUNT(*) FROM RA) /
    (SELECT COUNT(*) FROM FR), 2), 0)
    AS accept_rate;