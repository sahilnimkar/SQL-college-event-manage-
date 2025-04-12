-- List all upcoming events
SELECT * FROM events
WHERE date >= CURDATE()
ORDER BY date;

-- Show all enrollments with user and event details
SELECT e.enroll_id, u.name AS participant, ev.title AS event_name, e.enrollment_date
FROM enrollments e
JOIN users u ON e.user_id = u.user_id
JOIN events ev ON e.event_id = ev.event_id;

-- Average feedback rating per event
SELECT ev.title, AVG(f.rating) AS avg_rating
FROM feedback f
JOIN events ev ON f.event_id = ev.event_id
GROUP BY f.event_id;

-- Get feedback comments for a specific event
SELECT u.name, f.comments
FROM feedback f
JOIN users u ON f.user_id = u.user_id
WHERE f.event_id = 1;

-- Total enrollments per event
SELECT ev.title, COUNT(e.enroll_id) AS total_enrolled
FROM enrollments e
JOIN events ev ON e.event_id = ev.event_id
GROUP BY ev.title;

-- Trigger: Auto log when a new enrollment is made (optional advanced)
DELIMITER //
CREATE TRIGGER after_enrollment_insert
AFTER INSERT ON enrollments
FOR EACH ROW
BEGIN
  INSERT INTO announcements(title, message)
  VALUES ('New Enrollment', CONCAT('User ', NEW.user_id, ' enrolled in Event ', NEW.event_id));
END;
//
DELIMITER ;
