--
-- @lc app=leetcode id=185 lang=mysql
--
-- [185] Department Top Three Salaries
--

-- @lc code=start
# Write your MySQL query statement below
SELECT d.name as department, sub.name AS Employee, salary
FROM (
    SELECT name, departmentID, salary, dense_rank() OVER (PARTITION BY departmentID ORDER BY salary desc) AS salary_rank
    FROM Employee
) sub

LEFT JOIN Department d
ON sub.departmentID = d.id
WHERE salary_rank <= 3


-- @lc code=end

