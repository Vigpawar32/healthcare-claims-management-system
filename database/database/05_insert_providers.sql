USE healthcare_claims;

USE healthcare_claims;

INSERT INTO providers
(provider_name, provider_type, phone, email, address)
VALUES
('City Care Hospital', 'Hospital', '8000000001',
 'citycare@example.com', 'Mumbai'),
('Sunrise Medical Clinic', 'Clinic', '8000000002',
 'sunrise@example.com', 'Thane'),
('Green Valley Hospital', 'Hospital', '8000000003',
 'greenvalley@example.com', 'Navi Mumbai');

SELECT * from providers