SELECT cohorts.name, count(students.name) AS student_count
FROM cohorts
  JOIN students on cohorts.id = students.cohort_id
GROUP BY cohorts.name
HAVING count(students.name) >= 18
ORDER BY student_count;