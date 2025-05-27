/*
EXERCISE - 22
DUPLICATE REGISTRATIONS CHECK - 
FIND USERS WHO HAVE REGISTERED MULTIPLE TIMES FOR THE SAME EVENT.
*/
SELECT u.full_name,r.event_id,COUNT(r.registration_id) as registered_count FROM Users u
JOIN Registrations r ON u.user_id = r.user_id
GROUP BY u.user_id , r.event_id
HAVING registered_count>1