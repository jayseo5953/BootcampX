SELECT 
avg(assistance_requests.completed_at 
- assistance_requests.started_at) AS avg_duration
FROM assistance_requests;