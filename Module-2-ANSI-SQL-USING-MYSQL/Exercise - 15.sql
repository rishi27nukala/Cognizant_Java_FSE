/*
EXERCISE - 15
EVENT SESSION TIME CONFLICT - 
FIND EVENTS THAT HAVE AT LEAST TWO SESSIONS WITH OVERLAPPING START AND END TIMES.
*/

SELECT s1.event_id , s1.title as session1 , s2.title as session2 FROM Sessions s1
JOIN Sessions s2 ON s1.event_id = s2.event_id AND s1.session_id < s2.session_id 
WHERE s1.start_time < s2.end_time AND s1.end_time > s2.start_time