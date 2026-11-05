USE healthcare_claims;

INSERT INTO patients
(first_name, last_name, date_of_birth, gender, phone, email)
VALUES
('Neha', 'Kulkarni', '1995-04-12', 'Female', '9000000101', 'neha.kulkarni@example.com'),
('Arjun', 'Desai', '1988-08-23', 'Male', '9000000102', 'arjun.desai@example.com'),
('Sneha', 'Joshi', '2000-01-17', 'Female', '9000000103', 'sneha.joshi@example.com'),
('Rohan', 'Shah', '1992-11-05', 'Male', '9000000104', 'rohan.shah@example.com'),
('Ananya', 'Rao', '1985-06-30', 'Female', '9000000105', 'ananya.rao@example.com'),
('Karan', 'Malhotra', '1998-09-14', 'Male', '9000000106', 'karan.malhotra@example.com'),
('Pooja', 'Nair', '1990-03-21', 'Female', '9000000107', 'pooja.nair@example.com'),
('Aditya', 'Patil', '2001-12-08', 'Male', '9000000108', 'aditya.patil@example.com'),
('Isha', 'Kapoor', '1996-07-19', 'Female', '9000000109', 'isha.kapoor@example.com'),
('Rahul', 'Verma', '1987-02-11', 'Male', '9000000110', 'rahul.verma@example.com'),
('Meera', 'Iyer', '1999-05-27', 'Female', '9000000111', 'meera.iyer@example.com'),
('Dev', 'Chopra', '1993-10-03', 'Male', '9000000112', 'dev.chopra@example.com'),
('Kavya', 'Menon', '1991-01-25', 'Female', '9000000113', 'kavya.menon@example.com'),
('Sahil', 'Gupta', '1989-04-16', 'Male', '9000000114', 'sahil.gupta@example.com'),
('Riya', 'Bhat', '2002-08-09', 'Female', '9000000115', 'riya.bhat@example.com'),
('Manish', 'Saxena', '1984-12-22', 'Male', '9000000116', 'manish.saxena@example.com'),
('Tara', 'Fernandes', '1997-06-04', 'Female', '9000000117', 'tara.fernandes@example.com');

SELECT * FROM patients;