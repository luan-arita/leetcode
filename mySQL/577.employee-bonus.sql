--
-- @lc app=leetcode id=577 lang=mysql
--
-- [577] Employee Bonus
--

-- @lc code=start
# Write your MySQL query statement below
SELECT
Employee.name, Bonus.bonus

FROM
Employee 


LEFT JOIN Bonus ON Employee.empID = Bonus.empID


WHERE
COALESCE(Bonus.bonus, 0) < 1000 -- replaces NULL with 0

-- @lc code=end

