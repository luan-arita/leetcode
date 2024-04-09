--
-- @lc app=leetcode id=1321 lang=mysql
--
-- [1321] Restaurant Growth
--

-- @lc code=start
# Write your MySQL query statement below
SELECT visited_on, (
    SELECT SUM(amount)
    FROM Customer
    WHERE visited_on BETWEEN DATE_SUB(c.visited_on, interval 6 day) AND c.visited_on
) AS amount,
#subquery where we compare a correlated subquery that looks for customer visits betweeen the current visited_on date and 6 days prior
#so c.visited_on is where the output table starts(i.e. a week after the initial day)
#Whereas the subquery gets the visited_on from the start, that is, the initial date from the input table and it moves onto weeks like a sliding window
(
    SELECT ROUND(SUM(amount) / 7, 2)
    FROM Customer
    WHERE visited_on BETWEEN date_sub(c.visited_on, interval 6 day) AND c.visited_on
) AS average_amount

FROM Customer c
WHERE visited_on >= (
    SELECT date_add(min(visited_on), interval 6 day)
    FROM Customer
)

GROUP BY 1
ORDER BY 1

-- @lc code=end

