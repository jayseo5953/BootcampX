SELECT name, count(*) FROM assistance_requests
JOIN teachers
ON assistance_requests.teacher_id = teachers.id
WHERE name = 'Waylon Boehm'
GROUP BY name;