USE healthcare_claims;

INSERT INTO insurance_payers
(payer_name, payer_type, phone, email)
VALUES
('Apex Health Insurance', 'Commercial', '8005550101', 'claims@apexhealth.example'),
('Evergreen Medical Plans', 'Commercial', '8005550102', 'claims@evergreen.example'),
('Liberty Senior Care', 'Medicare', '8005550103', 'claims@libertysenior.example'),
('Horizon Family Health', 'Commercial', '8005550104', 'claims@horizonfamily.example'),
('Summit Healthcare', 'Commercial', '8005550105', 'claims@summithealth.example'),
('Community Care Plus', 'Medicaid', '8005550106', 'claims@communitycare.example'),
('Pioneer Health Benefits', 'Commercial', '8005550107', 'claims@pioneerhealth.example');

SELECT * FROM insurance_payers;