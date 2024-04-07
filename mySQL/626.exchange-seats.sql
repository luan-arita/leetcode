--
-- @lc app=leetcode id=626 lang=mysql
--
-- [626] Exchange Seats
--

-- @lc code=start
# Write your MySQL query statement below
SELECT 
#we check if it's a last odd number. for that, we select the max id and check if it's odd, if it is, then the seat is not swapped
CASE WHEN id = (SELECT MAX(id) FROM seat) AND id % 2 = 1 THEN id
#if seat is odd then we add 1 to the id, while the next even seat is subtracted 1. then the seats are effectively swapped
WHEN id % 2 = 1 THEN id + 1
ELSE id - 1
#END is used to finish the case when statement
END AS id, student
FROM seat
ORDER BY id



-- @lc code=end

