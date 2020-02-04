SELECT teachers.name as teacher,
  students.name as student,
  assignments.name as assignment,
  (completed_at - started_at) as duration
FROM assistance_requests
  JOIN teachers ON teacher_id = teachers.id
  JOIN students ON student_id = students.id
  JOIN assignments ON assignment_id = assignments.id
ORDER BY duration;