SELECT cohorts.name, count(students.*) AS student_count
FROM cohorts JOIN students
ON students.cohort_id = cohorts.id
GROUP BY cohorts.id
HAVING count(students.*) >= 18
ORDER BY count(students.*);