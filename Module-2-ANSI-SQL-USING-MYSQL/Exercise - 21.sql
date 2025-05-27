/*
EXERCISE - 21
TOP FEEDBACK PROVIDERS - 
SHOW THE TOP 5 USERS WHO HAVE SUBMITTED THE MOST FEEDBACK ENTRIES.
*/

SELECT u.full_name , COUNT(f.feedback_id) as feedback_count FROM Users u
JOIN Feedback f ON u.user_id = f.user_id
GROUP BY u.user_id
ORDER BY feedback_count DESC
LIMIT 5