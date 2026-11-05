USE healthcare_claims;

CREATE TABLE claims (
    claim_id INT PRIMARY KEY AUTO_INCREMENT,

    patient_id INT NOT NULL,
    provider_id INT NOT NULL,
    payer_id INT NOT NULL,

    claim_number VARCHAR(30) NOT NULL UNIQUE,
    service_date DATE NOT NULL,
    claim_amount DECIMAL(10,2) NOT NULL,

    claim_status VARCHAR(20) NOT NULL DEFAULT 'Submitted',

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_claim_patient
        FOREIGN KEY (patient_id)
        REFERENCES patients(patient_id),

    CONSTRAINT fk_claim_provider
        FOREIGN KEY (provider_id)
        REFERENCES providers(provider_id),

    CONSTRAINT fk_claim_payer
        FOREIGN KEY (payer_id)
        REFERENCES insurance_payers(payer_id),

    CONSTRAINT chk_claim_amount
        CHECK (claim_amount > 0),

    CONSTRAINT chk_claim_status
        CHECK (claim_status IN (
            'Submitted',
            'In Progress',
            'Paid',
            'Denied'
        ))
);

DESCRIBE claims;

SHOW CREATE TABLE claims;

SHOW INDEX FROM claims;

select patient_id, first_name, last_name
FROM patients;

select provider_id, provider_name
FROM providers

select payer_id, payer_name
FROM insurance_payers;