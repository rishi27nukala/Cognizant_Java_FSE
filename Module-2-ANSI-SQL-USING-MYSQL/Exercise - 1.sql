/*
EXERCISE - 1
USER UPCOMING EVENTS -
Show a list of all upcoming events a user is registered for in their city ,sorted by date.
*/

SELECT u.full_name,e.title,e.city,u.registration_date FROM Registrations r 
JOIN Users u ON u.user_id = r.user_id
JOIN Events e ON e.event_id = r.event_id 
WHERE e.status = "upcoming" and 
u.city = e.city
ORDER BY u.registration_date;
