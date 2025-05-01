
CREATE TABLE Members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100),
    address VARCHAR(255),
    join_date DATE
);

CREATE TABLE Trainers (
    trainer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100),
    specialization VARCHAR(100)
);

CREATE TABLE Memberships (
    membership_id INT PRIMARY KEY AUTO_INCREMENT,
    member_id INT,
    start_date DATE,
    end_date DATE,
    membership_type VARCHAR(50),
    fee DECIMAL(10, 2),
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);

CREATE TABLE Workout_Plans (
    plan_id INT PRIMARY KEY AUTO_INCREMENT,
    member_id INT,
    trainer_id INT,
    plan_description TEXT,
    created_on DATE,
    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    FOREIGN KEY (trainer_id) REFERENCES Trainers(trainer_id)
);

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    member_id INT,
    payment_date DATE,
    amount DECIMAL(10, 2),
    payment_method VARCHAR(50),
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);

CREATE TABLE Attendance (
    attendance_id INT PRIMARY KEY AUTO_INCREMENT,
    member_id INT,
    date DATE,
    check_in_time TIME,
    check_out_time TIME,
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);


INSERT INTO Members (name, phone, email, address, join_date) VALUES
('John Doe', '9876543210', 'john.doe@gmail.com', '123 Elm St', '2024-01-10'),
('Jane Smith', '9123456780', 'jane.smith@yahoo.com', '456 Oak St', '2024-02-15'),
('Mike Johnson', '9988776655', 'mike.johnson@gmail.com', '789 Pine St', '2024-03-20'),
('Emily Davis', '9090909090', 'emily.davis@hotmail.com', '321 Maple St', '2024-04-01'),
('Chris Lee', '9001234567', 'chris.lee@gmail.com', '654 Cedar St', '2024-05-05'),
('Sophia Brown', '9111222333', 'sophia.brown@gmail.com', '987 Birch St', '2024-06-10'),
('Daniel Clark', '9333444555', 'daniel.clark@yahoo.com', '111 Cherry St', '2024-07-12'),
('Olivia Martin', '9222333444', 'olivia.martin@gmail.com', '222 Spruce St', '2024-08-14');


INSERT INTO Trainers (name, phone, email, specialization) VALUES
('Tom Hardy', '8112233445', 'tom.hardy@fitlife.com', 'Strength Training'),
('Linda Hall', '8223344556', 'linda.hall@fitlife.com', 'Cardio'),
('James Wilson', '8334455667', 'james.wilson@fitlife.com', 'Yoga'),
('Sara White', '8445566778', 'sara.white@fitlife.com', 'HIIT'),
('Brian Scott', '8556677889', 'brian.scott@fitlife.com', 'Bodybuilding'),
('Rachel Green', '8667788990', 'rachel.green@fitlife.com', 'Pilates'),
('Kyle Brooks', '8778899001', 'kyle.brooks@fitlife.com', 'CrossFit'),
('Nina Adams', '8889900112', 'nina.adams@fitlife.com', 'Zumba');


INSERT INTO Memberships (member_id, start_date, end_date, membership_type, fee) VALUES
(1, '2024-01-10', '2024-04-10', 'Quarterly', 150.00),
(2, '2024-02-15', '2025-02-15', 'Yearly', 500.00),
(3, '2024-03-20', '2024-06-20', 'Quarterly', 150.00),
(4, '2024-04-01', '2024-07-01', 'Quarterly', 150.00),
(5, '2024-05-05', '2024-08-05', 'Quarterly', 150.00),
(6, '2024-06-10', '2024-09-10', 'Quarterly', 150.00),
(7, '2024-07-12', '2024-10-12', 'Quarterly', 150.00),
(8, '2024-08-14', '2025-08-14', 'Yearly', 500.00);


INSERT INTO Workout_Plans (member_id, trainer_id, plan_description, created_on) VALUES
(1, 1, 'Beginner strength training plan.', '2024-01-11'),
(2, 2, 'Cardio and endurance for fat loss.', '2024-02-16'),
(3, 3, 'Yoga for flexibility and relaxation.', '2024-03-21'),
(4, 4, 'High-intensity interval training.', '2024-04-02'),
(5, 5, 'Advanced bodybuilding program.', '2024-05-06'),
(6, 6, 'Core and mobility with Pilates.', '2024-06-11'),
(7, 7, 'Functional fitness with CrossFit.', '2024-07-13'),
(8, 8, 'Dance and fun Zumba plan.', '2024-08-15');


INSERT INTO Payments (member_id, payment_date, amount, payment_method) VALUES
(1, '2024-01-10', 150.00, 'Card'),
(2, '2024-02-15', 500.00, 'Cash'),
(3, '2024-03-20', 150.00, 'Card'),
(4, '2024-04-01', 150.00, 'Online'),
(5, '2024-05-05', 150.00, 'Cash'),
(6, '2024-06-10', 150.00, 'Online'),
(7, '2024-07-12', 150.00, 'Card'),
(8, '2024-08-14', 500.00, 'Card');


INSERT INTO Attendance (member_id, date, check_in_time, check_out_time) VALUES
(1, '2024-04-01', '08:00:00', '09:30:00'),
(2, '2024-04-02', '09:00:00', '10:00:00'),
(3, '2024-04-03', '07:30:00', '09:00:00'),
(4, '2024-04-04', '08:15:00', '09:45:00'),
(5, '2024-04-05', '08:45:00', '10:15:00'),
(6, '2024-04-06', '09:00:00', '10:30:00'),
(7, '2024-04-07', '07:45:00', '09:15:00'),
(8, '2024-04-08', '08:30:00', '10:00:00');
