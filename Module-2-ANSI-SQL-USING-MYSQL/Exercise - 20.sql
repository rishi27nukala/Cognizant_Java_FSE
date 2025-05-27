/*
EXERCISE - 20
USER ENGAGEMENT INDEX - 
FOR EACH USER, SHOW THE NUMBER OF EVENTS THEY REGISTERED FOR AND THE NUMBER OF FEEDBACKS THEY PROVIDED.
*/
SELECT u.full_name,COUNT(DISTINCT r.event_id) as event_count,COUNT(DISTINCT f.feedback_id) as feedback_count FROM Users u 
LEFT JOIN Registrations r ON r.user_id = u.user_id
LEFT JOIN Feedback f ON f.user_id = u.user_id
GROUP BY u.user_id