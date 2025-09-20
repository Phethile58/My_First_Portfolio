-- Users
INSERT INTO User (first_name, last_name, email, phone, password_hash, role)
VALUES
('Alice', 'Smith', 'alice@example.com', '0712345678', 'hashed_pwd1', 'host'),
('Bob', 'Johnson', 'bob@example.com', '0723456789', 'hashed_pwd2', 'guest'),
('Carol', 'Lee', 'carol@example.com', '0734567890', 'hashed_pwd3', 'guest');

-- Properties
INSERT INTO Property (host_id, title, description, address, city, country, price_per_night, property_type)
VALUES
(1, 'Cozy Apartment', 'A cozy downtown apartment', '123 Main St', 'Johannesburg', 'South Africa', 50.00, 'Apartment'),
(1, 'Beach House', 'Spacious beach house', '456 Ocean Rd', 'Durban', 'South Africa', 120.00, 'House');

-- Bookings
INSERT INTO Booking (user_id, property_id, start_date, end_date, status, total_price)
VALUES
(2, 1, '2025-10-01', '2025-10-05', 'confirmed', 200.00),
(3, 2, '2025-10-10', '2025-10-15', 'pending', 600.00);

-- Payments
INSERT INTO Payment (booking_id, amount, method, status)
VALUES
(1, 200.00, 'Credit Card', 'completed'),
(2, 600.00, 'PayPal', 'pending');

-- Reviews
INSERT INTO Review (booking_id, user_id, rating, comment)
VALUES
(1, 2, 5, 'Great stay!'),
(2, 3, 4, 'Nice property, a bit far from the city.');

-- Messages
INSERT INTO Message (sender_id, receiver_id, booking_id, content, status)
VALUES
(2, 1, 1, 'Hi, I am excited for my stay!', 'sent'),
(1, 2, 1, 'Welcome! Let me know if you need anything.', 'sent');

-- PropertyIndex
INSERT INTO PropertyIndex (property_id)
VALUES
(1),
(2);
