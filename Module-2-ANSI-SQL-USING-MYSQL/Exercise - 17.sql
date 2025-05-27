/*
EXERCISE - 17
MULTI-SESSION SPEAKERS - 
FIND SPEAKERS WHO ARE SPEAKING IN MORE THAN ONE SESSION.
*/

SELECT s.speaker_name , COUNT(s.session_id) as session_count FROM Sessions s
GROUP BY s.speaker_name
HAVING session_count > 1