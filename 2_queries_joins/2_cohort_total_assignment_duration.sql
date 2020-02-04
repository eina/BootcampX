SELECT sum(assignment_submissions.duration) AS total_duration
FROM students
  JOIN cohorts ON cohort_id = cohorts.id
  JOIN assignment_submissions ON students.id = assignment_submissions.student_id
WHERE cohorts.name = 'FEB12';