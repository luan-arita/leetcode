--
-- @lc app=leetcode id=1633 lang=mysql
--
-- [1633] Percentage of Users Attended a Contest
--

-- @lc code=start
# Write your MySQL query statement below
SELECT contest_id, ROUND(100 * COUNT()user_id) / (SELECT COUNT(user_id) FROM Users), 2) AS percentage

FROM Register
GROUP BY contest_id
ORDER BY percentage desc, contest_id



-- @lc code=end

