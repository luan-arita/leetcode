--
-- @lc app=leetcode id=1934 lang=mysql
--
-- [1934] Confirmation Rate
--

-- @lc code=start
# Write your MySQL query statement below
SELECT s.user_id, 
  ROUND(AVG(IF(c.action='confirmed',1,0)),2) as confirmation_rate 
FROM Signups s
LEFT JOIN Confirmations c using (user_id)
GROUP BY s.user_id


-- @lc code=end

