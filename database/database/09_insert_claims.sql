USE healthcare_claims;

INSERT INTO claims

(patient_id, provider_id, payer_id, claim_number, service_date, claim_amount, claim_status)

VALUES
(12,1,1, 'CLM1001', '2026-09-10', 2500.00, 'Submitted'),
(13,2,2, 'CLM1002', '2026-09-12', 4200.00, 'In Progress'),
(14,3,3, 'CLM1003', '2026-09-15', 1800.00, 'Paid');

SELECT * FROM claims;