SELECT assignments.id, assignments.day, assignments.chapter, assignments.name, count(*) AS total_requests
FROM assignments
JOIN assistance_requests
ON assistance_requests.assignment_id = assignments.id
GROUP BY assignments.id, assignments.day, assignments.chapter, assignments.name
ORDER BY total_requests DESC;