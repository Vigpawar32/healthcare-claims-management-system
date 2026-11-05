USE healthcare_claims;

CREATE TABLE insurance_payers (
    payer_id INT PRIMARY KEY AUTO_INCREMENT,
    payer_name VARCHAR(100) NOT NULL UNIQUE,
    payer_type VARCHAR(50) NOT NULL,
    phone VARCHAR(15),
    email VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);