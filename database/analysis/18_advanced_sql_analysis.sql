USE healthcare_claims;

WITH payer_summary AS (
    SELECT 
        ip.payer_name,
        COUNT(c.claim_number) AS total_claims,
        SUM(c.claim_amount) AS total_claim_amount
    FROM insurance_payers ip 
    INNER JOIN claims c 
        ON ip.payer_id = c.payer_id
    GROUP BY ip.payer_name
    
)

SELECT
    payer_name,
    total_claims,
    total_claim_amount,
    RANK() OVER(
        ORDER BY total_claim_amount DESC
    ) AS payer_rank
FROM payer_summary


SELECT
    claim_number,
    payer_id,
    claim_amount,
    ROW_NUMBER() OVER(
        PARTITION BY payer_id
        ORDER BY claim_amount DESC
    ) AS row_num,
    RANK() OVER(
        PARTITION BY payer_id
        ORDER BY claim_amount DESC
    ) AS claim_rank,
    DENSE_RANK() OVER(
        PARTITION BY payer_id
        ORDER BY claim_amount DESC
    ) AS dense_rank_num
FROM claims;


SELECT
    patient_id,
    claim_number,
    service_date,
    claim_amount,
    SUM(claim_amount) OVER(
        ORDER BY service_date, claim_number
    ) AS running_claim_amount
FROM claims;


SELECT
    claim_number,
    payer_id,
    claim_amount,
    ROUND(
        AVG(claim_amount) OVER (
            PARTITION BY payer_id
        ),2
    ) AS payer_average,
    CASE 
        WHEN claim_amount > AVG(claim_amount) OVER(
            PARTITION BY payer_id
        ) THEN  'Above Average'
        WHEN claim_amount < AVG(claim_amount) OVER(
            PARTITION BY payer_id
        ) THEN 'Below Average'
        ELSE  'Equal to Average'
    END AS claim_comparison
FROM claims;