SELECT name as student, avg(assignment_submissions.duration) as average_assignment_duration
FROM students
  JOIN assignment_submissions ON students.id = assignment_submissions.student_id
WHERE end_date IS NULL
GROUP BY students.name
ORDER BY avg(assignment_submissions.duration) DESC;