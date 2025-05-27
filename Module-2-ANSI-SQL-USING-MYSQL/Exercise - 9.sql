/*
EXERCISE - 9
ORGANIZER EVENT SUMMARY -
FOR EACH EVENT ORGANIZER,SHOW THE NUMBER OF EVENTS CREATED AND THEIR CURRENT STATUS
*/

SELECT u.full_name as organizer_name,e.status,COUNT(e.organizer_id) as event_count
FROM Events e JOIN Users u ON e.organizer_id = u.user_id
GROUP BY e.organizer_id,e.status