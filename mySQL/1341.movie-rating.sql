--
-- @lc app=leetcode id=1341 lang=mysql
--
-- [1341] Movie Rating
--

-- @lc code=start
# Write your MySQL query statement below
WITH cte AS(
    SELECT name, COUNT(movie_id) AS count
    FROM MovieRating
    LEFT JOIN Users
    ON MovieRating.user_id = Users.user_id
    GROUP BY 1
    ORDER BY 2 DESC, 1
),

cte2 AS(
    SELECT title, avg(rating) AS avg_rate
    FROM MovieRating
    LEFT JOIN Movies
    ON MovieRating.movie_id = Movies.movie_id
    WHERE LEFT (created_at, 7) = '2020-02'
    GROUP BY 1
    ORDER BY 2 desc, 1
)

(SELECT name AS results
FROM cte
limit 1)

UNION ALL
(SELECT title as results
FROM cte2
limit 1)

-- @lc code=end

