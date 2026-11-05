USE healthcare_claims;

INSERT INTO patients
(first_name, last_name, date_of_birth, gender, phone, email)
VALUES
('Rahul', 'Sharma', '1995-04-12', 'Male', '9000000001', 'rahul.sharma@example.com'),
('Priya', 'Mehta', '1998-08-21', 'Female', '9000000002', 'priya.mehta@example.com'),
('Amit', 'Patel', '1992-11-03', 'Male', '9000000003', 'amit.patel@example.com');

SELECT * FROM patients;

SELECT COUNT(*) AS total_patients
FROM patients;