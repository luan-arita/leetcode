--
-- @lc app=leetcode id=1661 lang=mysql
--
-- [1661] Average Time of Process per Machine
--

-- @lc code=start
# Write your MySQL query statement below

SELECT
StartActivity.machine_id,
ROUND(
    AVG(EndActivity.timestamp - StartActivity.timestamp), 3
) AS processing_time

From Activity as StartActivity
INNER JOIN Activity as EndActivity
    USING (machine_id, process_id)
WHERE
    StartActivity.activity_type = 'start'
    AND EndActivity.activity_type = 'end'
GROUP BY 1

-- @lc code=end

