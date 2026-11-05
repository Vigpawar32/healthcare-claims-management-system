USE healthcare_claims;

USE healthcare_claims;

INSERT INTO insurance_payers
(payer_name, payer_type, phone, email)
VALUES
('Blue Horizon Health', 'Commercial', '8100000001',
 'contact@bluehorizon.example'),
('United Care Insurance', 'Commercial', '8100000002',
 'contact@unitedcare.example'),
('National Senior Health', 'Government', '8100000003',
 'contact@nationalsenior.example');

select * from insurance_payers;