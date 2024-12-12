/* Write your T-SQL query statement below */
WITH TeamStats2 AS(
SELECT
    team_id,
    team_name,
    SUM(wins * 3 + draws * 1) AS points
FROM
    TeamStats
GROUP BY
    team_id,
    team_name
)

SELECT
    team_id,
    team_name,
    points,
    RANK() OVER(ORDER BY points DESC) AS position
FROM
    TeamStats2
ORDER BY
    points DESC,
    team_name ASC;