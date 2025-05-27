/*
EXERCISE - 8
SESSIONS PER UPCOMING EVENT - 
DISPLAY ALL UPCOMING EVENTS WITH THE COUNT OF SESSIONS SCHEDULED FOR THEM
*/

SELECT e.title,COUNT(s.session_id) as sessions_count FROM Events e
JOIN Sessions s ON s.event_id = e.event_id
WHERE e.status = "upcoming"
GROUP BY e.event_id