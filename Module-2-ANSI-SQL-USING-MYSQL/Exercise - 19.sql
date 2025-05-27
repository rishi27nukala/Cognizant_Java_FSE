/*
EXERCISE - 19
COMPLETED EVENTS WITH FEEDBACK SUMMARY - 
FOR COMPLETED EVENTS, SHOW TOTAL REGISTRATIONS AND AVERAGE FEEDBACK RATING.
*/
SELECT e.status , COUNT(DISTINCT r.user_id) as total_registrations , AVG(f.rating) as avg_rating FROM Events e
JOIN Registrations r ON r.event_id = e.event_id 
JOIN Feedback f ON f.event_id = e.event_id
WHERE e.status = "completed"
GROUP BY e.status