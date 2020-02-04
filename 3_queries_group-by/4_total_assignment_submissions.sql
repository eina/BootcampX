SELECT cohorts.name as cohort_name, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
  JOIN cohorts ON cohorts.id = cohort_id
  JOIN students ON students.id = student_id
GROUP BY cohorts.name
ORDER BY count(assignment_submissions.*) DESC;