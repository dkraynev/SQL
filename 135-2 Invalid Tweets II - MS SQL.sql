/* Write your T-SQL query statement below */

SELECT
    tweet_id
FROM
    Tweets
WHERE
    LEN(content) > 140
    OR LEN(content) - LEN(REPLACE(content, '@', '')) > 3
    OR LEN(content) - LEN(REPLACE(content, '#', '')) > 3;