USE healthcare_claims;

INSERT INTO providers
(provider_name, provider_type, phone, email, address)
VALUES
('Metro Advanced Hospital', 'Hospital', '9000000201', 'contact@metroadvanced.example', 'Mumbai'),
('Wellness Family Clinic', 'Clinic', '9000000202', 'contact@wellnessfamily.example', 'Thane'),
('Prime Health Medical Center', 'Medical Center', '9000000203', 'contact@primehealth.example', 'Navi Mumbai'),
('CareFirst Specialty Hospital', 'Hospital', '9000000204', 'contact@carefirst.example', 'Pune'),
('Lakeside Diagnostic Clinic', 'Diagnostic Center', '9000000205', 'contact@lakeside.example', 'Mumbai');

SELECT provider_id, provider_name, provider_type
FROM providers
ORDER BY provider_id;


SELECT count(*) AS total_providers
FROM providers;


SELECT patient_id, first_name last_name
FROM patients
ORDER BY patient_id;

SELECT payer_id, payer_name
FROM insurance_payers
ORDER BY payer_id;

SELECT provider_id, provider_name
FROM providers
ORDER BY provider_id;

