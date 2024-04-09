--
-- @lc app=leetcode id=585 lang=mysql
--
-- [585] Investments in 2016
--

-- @lc code=start
# Write your MySQL query statement below

WITH same_invest_info AS(
    SELECT pid, tiv_2016, lat, lon
    FROM Insurance
    WHERE tiv_2015 IN(
        SELECT tiv_2015
        FROM Insurance
        GROUP BY 1
        HAVING COUNT(tiv_2015) > 1
    )
),

loc AS(
    SELECT lat, lon
    FROM Insurance
    GROUP BY 1, 2
    HAVING COUNT(lat) = 1 AND COUNT(lon) = 1
)

SELECT ROUND(sum(tiv_2016), 2) AS tiv_2016
FROM loc a, same_invest_info b
WHERE a.lat = b.lat AND a.lon = b.lon



-- @lc code=end

