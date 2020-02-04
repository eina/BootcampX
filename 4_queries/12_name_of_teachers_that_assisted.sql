SELECT DISTINCT teachers.name as teacher, cohorts.name as cohorts
FROM assistance_requests
  JOIN teachers ON teacher_id = teachers.id
  JOIN students on student_id = students.id
  JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
ORDER BY teacher;