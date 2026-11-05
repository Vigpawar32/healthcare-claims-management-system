USE healthcare_claims;

SELECT
    claim_status,
    COUNT(*) as total_claims,
    SUM(claim_amount) AS total_claim_amount
FROM claims 
GROUP BY claim_status
ORDER BY total_claims DESC;


SELECT
    ip.payer_name,
    COUNT(c.claim_id) AS total_claims,
    SUM(c.claim_amount) AS total_claim_amount,
    AVG(c.claim_amount) AS average_claim_amount
FROM claims c 
INNER JOIN insurance_payers ip 
    ON c.payer_id = ip.payer_id
GROUP BY ip.payer_name
ORDER BY total_claim_amount DESC;


SELECT
    COUNT(*) AS total_denied_claims,
    SUM(claim_amount) AS total_denied_amount,
    AVG(claim_amount) AS average_denied_amount
FROM claims c 
WHERE claim_status = 'Denied';


SELECT
    claim_number,
    claim_amount,
    claim_status
FROM claims
WHERE claim_amount > 3000
ORDER BY claim_amount DESC;


SELECT
    p.patient_id,
    CONCAT(p.first_name,' ', p.last_name) AS patient_name,
    COUNT(c.claim_id) AS total_claims,
    SUM(c.claim_amount) AS total_claim_amount
FROM patients p 
INNER JOIN claims c 
    ON p.patient_id = c.patient_id
GROUP BY
    p.patient_id,
    p.first_name,
    p.last_name
ORDER BY total_claim_amount DESC;

SELECT
    YEAR(service_date) AS claim_year,
    MONTH(service_date) AS claim_month,
    COUNT(*) AS total_claims,
    SUM(claim_amount) AS total_claim_amount
FROM claims
GROUP BY
    YEAR(service_date),
    MONTH(service_date)
ORDER BY
    claim_year,
    claim_month;