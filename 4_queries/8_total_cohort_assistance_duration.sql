SELECT cohorts.name, sum(completed_at - started_at) as total_duration
FROM assistance_requests
  JOIN students ON student_id = students.id
  JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name;