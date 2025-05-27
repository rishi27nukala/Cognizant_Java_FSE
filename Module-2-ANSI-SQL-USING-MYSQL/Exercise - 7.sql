/*
EXERCISE - 7
LOW FEEDBACK ALERTS - 
LIST ALL USERS WHO GAVE FEEDBACK WITH A RATING LESS THAN 3 ,ALONG WITH THEIR COMMENTS AND ASSOCIATED EVENT NAMES
*/
SELECT u.full_name,e.title,f.rating,f.comments FROM Users u
JOIN Feedback f ON u.user_id = f.user_id
JOIN Events e ON f.event_id = e.event_id
WHERE f.rating < 3