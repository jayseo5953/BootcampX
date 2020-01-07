SELECT teachers.name AS teacher, cohorts.name AS cohort,
count(*)AS number_of_assists
FROM assistance_requests
JOIN students
ON assistance_requests.student_id = students.id
JOIN cohorts
ON cohorts.id = students.cohort_id
JOIN teachers
ON teachers.id = assistance_requests.teacher_id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teachers.name;