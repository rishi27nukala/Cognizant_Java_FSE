/*
EXERCISE - 12
EVENT WITH MAXIMUM SESSIONS - 
LIST THE EVENTS WITH HIGHEST NUMBER OF SESSIONS
*/

SELECT e.title,COUNT(s.session_id) as session_count FROM Events e
JOIN Sessions s ON s.event_id = e.event_id
GROUP BY e.event_id
ORDER BY session_count DESC
LIMIT 1