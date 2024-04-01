--
-- @lc app=leetcode id=1280 lang=mysql
--
-- [1280] Students and Examinations
--

-- @lc code=start
# Write your MySQL query statement below
-- groups every student with every subject
SELECT Students.student_id, Students.student_name, Subjects.subject_name, COUNT(Examinations.subject_name) AS attended_exams FROM Students
JOIN Subjects

LEFT JOIN Examinations ON Students.student_id = Examinations.student_id
AND Subjects.subject_name = Examinations.subject_name

GROUP BY Students.student_id, Subjects.subject_name
ORDER BY student_id ASC, subject_name ASC
-- @lc code=end

