SELECT
avg(total_duration) AS avg_total_duration
FROM (SELECT sum(assistance_requests.completed_at 
- assistance_requests.started_at) AS total_duration
FROM assistance_requests
JOIN students
ON assistance_requests.student_id = students.id
JOIN cohorts
ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
) AS avg_durations_cohort
ORDER BY avg_total_duration;