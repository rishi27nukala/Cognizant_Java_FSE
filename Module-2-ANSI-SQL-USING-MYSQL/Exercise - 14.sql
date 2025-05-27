/*
EXERCISE - 14
MOST REGISTERED EVENTS - 
IDENTIFY THE TOP 3 EVENTS WITH THE HIGHEST NUMBER OF USER REGISTRATIONS.
*/

SELECT e.title,COUNT(r.registration_id) as user_count FROM Events e
JOIN Registrations r ON r.event_id = e.event_id
GROUP BY e.event_id
ORDER BY user_count DESC
LIMIT 3