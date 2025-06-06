/*
EXERCISE - 24
AVERAGE SESSION DURATION PER EVENT - 
SHOW THE AVERAGE DURATION (IN MINUTES) OF SESSIONS FOR EACH EVENT.
*/

SELECT event_id , AVG(timestampdiff(MINUTE,start_time,end_time)) as duration FROM Sessions
GROUP BY event_id