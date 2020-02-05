const { Pool } = require("pg");

const pool = new Pool({
  user: "vagrant",
  password: "123",
  host: "localhost",
  database: "bootcampx"
});

const args = process.argv.slice(2);

pool
  .query(
    `
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohorts
FROM assistance_requests
  JOIN teachers ON teacher_id = teachers.id
  JOIN students on student_id = students.id
  JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = '${args[0]}'
ORDER BY teacher;
`
  )
  .then(res => {
    console.log(res.rows);
  })
  .catch(err => console.error("query error", err.stack));
