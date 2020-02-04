SELECT students.name as student_name,
  email,
  cohorts.name as cohort_name
FROM students
  FULL OUTER JOIN cohorts on cohort_id = cohorts.id;