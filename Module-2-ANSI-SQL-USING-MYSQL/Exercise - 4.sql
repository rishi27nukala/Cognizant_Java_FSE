/*
EXERCISE - 4
PEAK SESSION HOURS 
COUNT HOW MANY SESSIONS ARE SCHEDULED BETWEEN 10AM TO 12PM FOR EACH EVENT 
*/

SELECT e.title , COUNT(s.session_id) as session_count FROM Events e
JOIN Sessions s ON e.event_id = s.event_id 
WHERE TIME(s.start_time) BETWEEN "10:00:00" AND "12:00:00"
GROUP BY e.event_id