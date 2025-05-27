/*
EXERCISE - 23
REGISTRATION TRENDS - 
SHOW THE NUMBER OF REGISTRATIONS PER MONTH FOR THE LAST 12 MONTHS.
*/
SELECT MONTHNAME(registration_date) AS month_name, COUNT(*) AS registrations
FROM Registrations
WHERE registration_date >= CURDATE() - INTERVAL 12 MONTH
GROUP BY MONTH(registration_date), MONTHNAME(registration_date)
ORDER BY MONTH(registration_date);
