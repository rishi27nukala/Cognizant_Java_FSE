/*
EXERCISE - 18
RESOURCE AVAILABILITY CHECK - 
IDENTIFY EVENTS THAT HAVE NO ASSOCIATED RESOURCES.
*/

SELECT title FROM Events WHERE event_id NOT IN (SELECT event_id FROM Resources)