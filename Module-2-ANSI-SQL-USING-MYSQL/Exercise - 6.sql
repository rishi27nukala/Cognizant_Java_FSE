/*
EXERCISE - 6
EVENT RESOURCE SUMMARY - 
GENERATE A REPORT SHOWING THE NUMBER OF RESOURCES UPLOADED FOR EACH EVENT
*/

SELECT e.title,r.resource_type,COUNT(r.resource_type) as resource_count FROM Events e 
JOIN Resources r ON r.event_id = e.event_id
GROUP BY e.event_id,r.resource_type