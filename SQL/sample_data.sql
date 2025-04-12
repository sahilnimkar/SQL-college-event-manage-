-- Insert Users
INSERT INTO users (name, email, role, password)
VALUES 
('Sahil Nimkar', 'sahil@college.com', 'student', 'sahil123'),
('Prof. Mehta', 'mehta@college.com', 'teacher', 'mehta456'),
('Admin User', 'admin@college.com', 'admin', 'admin789');

-- Insert Events
INSERT INTO events (title, description, date, time, venue, created_by)
VALUES 
('Tech Talk 2025', 'A seminar on AI in Education.', '2025-05-12', '11:00:00', 'Main Hall', 2),
('Hackathon', '48-hour coding competition.', '2025-06-05', '09:00:00', 'Lab 3', 2);

-- Insert Enrollments
INSERT INTO enrollments (user_id, event_id)
VALUES 
(1, 1),
(1, 2);

-- Insert Feedback
INSERT INTO feedback (user_id, event_id, rating, comments)
VALUES 
(1, 1, 5, 'Very informative session!'),
(1, 2, 4, 'Enjoyed the hackathon!');

-- Insert Announcements
INSERT INTO announcements (title, message)
VALUES 
('Holiday Notice', 'College will remain closed on May 15th'),
('New Course Alert', 'Python for Data Science will begin next week.');
