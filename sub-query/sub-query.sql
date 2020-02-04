-- Get the total number of in complete assignment submissions for a student:
-- SELECT (SELECT count(assignments)
--   FROM assignments) - count(assignment_submissions) as total_incomplete
-- FROM assignment_submissions
--   JOIN students ON students.id = student_id
-- WHERE students.name = 'Ibrahim Schimmel';

-- average number of students that attend a cohort
-- SELECT avg(total_students) as average_students
-- FROM(
--   SELECT count(students) as total_students
--   FROM students
--     JOIN cohorts on cohorts.id = cohort_id
--   GROUP BY cohorts
-- ) as totals_table;

-- get the name of all incomplete assignments for a student. It's a fairly simple query to get all completed assignments for a student
SELECT assignments.name
FROM assignments
WHERE id NOT IN (
  SELECT assignment_id
FROM assignment_submissions
  JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel'
);