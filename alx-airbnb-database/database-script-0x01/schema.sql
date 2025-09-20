-- User table
CREATE TABLE User (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    phone VARCHAR(20),
    password_hash VARCHAR(255) NOT NULL,
    role VARCHAR(50) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Property table
CREATE TABLE Property (
    property_id INT AUTO_INCREMENT PRIMARY KEY,
    host_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    address VARCHAR(255),
    city VARCHAR(100),
    country VARCHAR(100),
    price_per_night DECIMAL(10,2),
    property_type VARCHAR(50),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (host_id) REFERENCES User(user_id)
);

-- Booking table
CREATE TABLE Booking (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATETIME NOT NULL,
    end_date DATETIME NOT NULL,
    status VARCHAR(50),
    total_price DECIMAL(10,2),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES User(user_id),
    FOREIGN KEY (property_id) REFERENCES Property(property_id)
);

-- Payment table
CREATE TABLE Payment (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    booking_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    method VARCHAR(50),
    status VARCHAR(50),
    transaction_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (booking_id) REFERENCES Booking(booking_id)
);

-- Review table
CREATE TABLE Review (
    review_id INT AUTO_INCREMENT PRIMARY KEY,
    booking_id INT NOT NULL,
    user_id INT NOT NULL,
    rating INT CHECK (rating >= 1 AND rating <= 5),
    comment TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (booking_id) REFERENCES Booking(booking_id),
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);

-- Message table
CREATE TABLE Message (
    message_id INT AUTO_INCREMENT PRIMARY KEY,
    sender_id INT NOT NULL,
    receiver_id INT NOT NULL,
    booking_id INT,
    content TEXT NOT NULL,
    sent_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(50),
    FOREIGN KEY (sender_id) REFERENCES User(user_id),
    FOREIGN KEY (receiver_id) REFERENCES User(user_id),
    FOREIGN KEY (booking_id) REFERENCES Booking(booking_id)
);

-- Index table
CREATE TABLE PropertyIndex (
    index_id INT AUTO_INCREMENT PRIMARY KEY,
    property_id INT NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    last_updated DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (property_id) REFERENCES Property(property_id)
);
CREATE INDEX idx_booking_user ON Booking(user_id);
CREATE INDEX idx_booking_property ON Booking(property_id);
CREATE INDEX idx_payment_booking ON Payment(booking_id);
CREATE INDEX idx_review_booking ON Review(booking_id);
CREATE INDEX idx_message_booking ON Message(booking_id);
