SELECT 
avg(assistance_requests.started_at -
assistance_requests.created_at) AS avg_duration
FROM assistance_requests;