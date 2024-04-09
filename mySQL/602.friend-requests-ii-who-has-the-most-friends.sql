--
-- @lc app=leetcode id=602 lang=mysql
--
-- [602] Friend Requests II: Who Has the Most Friends
--

-- @lc code=start
# Write your MySQL query statement below
WITH cte AS(
    SELECT requester_id AS id FROM RequestAccepted
    UNION ALL
    SELECT accepter_id id FROM RequestAccepted
)

SELECT id, count(*) AS num FROM cte 
GROUP BY 1
ORDER BY 2
DESC
LIMIT 1

-- @lc code=end

