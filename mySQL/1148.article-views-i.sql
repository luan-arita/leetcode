--
-- @lc app=leetcode id=1148 lang=mysql
--
-- [1148] Article Views I
--

-- @lc code=start
# Write your MySQL query statement below

SELECT DISTINCT
author_id as id

FROM
Views

WHERE
author_id = viewer_id

ORDER BY id asc

-- @lc code=end

