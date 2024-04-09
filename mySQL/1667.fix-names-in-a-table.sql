--
-- @lc app=leetcode id=1667 lang=mysql
--
-- [1667] Fix Names in a Table
--

-- @lc code=start
# Write your MySQL query statement below

SELECT user_id, CONCAT(UPPER(LEFT(name, 1)), LOWER(SUBSTR(name, 2, length(name)))) AS name
FROM Users
ORDER BY 1


-- @lc code=end

