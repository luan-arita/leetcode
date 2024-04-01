--
-- @lc app=leetcode id=1378 lang=mysql
--
-- [1378] Replace Employee ID With The Unique Identifier
--

-- @lc code=start
# Write your MySQL query statement below

SELECT
EmployeeUNI.unique_id, Employees.name

FROM Employees

LEFT JOIN EmployeeUNI on Employees.id = EmployeeUNI.id


-- @lc code=end

