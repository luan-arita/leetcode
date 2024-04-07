--
-- @lc app=leetcode id=1907 lang=mysql
--
-- [1907] Count Salary Categories
--

-- @lc code=start
# Write your MySQL query statement below
WITH cte AS (
    SELECT 'Low Salary' AS category, COUNT(account_id) AS accounts_count
    FROM Accounts
    WHERE income < 20000
),
cte2 AS(
    SELECT 'Average Salary' AS category, COUNT(account_id) AS accounts_count
    FROM Accounts
    WHERE income BETWEEN 20000 AND 50000
),
cte3 AS(
    SELECT 'High Salary' AS category, COUNT(account_id) AS accounts_count
    FROM Accounts
    WHERE income > 50000
)   


SELECT category, accounts_count
FROM cte
UNION
SELECT category, accounts_count
FROM cte2
UNION
SELECT category, accounts_count
FROM cte3

-- @lc code=end

