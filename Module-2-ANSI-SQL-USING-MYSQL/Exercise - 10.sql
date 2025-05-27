/*
EXERCISE - 10
FEEDBACK GAP -
IDENTIFY EVENTS THAT HAD REGISTRATIONS BUT RECEIVED NO FEEDBACK AT ALL
*/

SELECT e.title FROM Events e 
JOIN Registrations r ON r.event_id = e.event_id
LEFT JOIN Feedback f ON e.event_id = f.event_id
WHERE f.feedback_id is NULL
