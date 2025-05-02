CREATE TABLE stg_clients (
  client_id       INT PRIMARY KEY,
  gender          VARCHAR(6),
  birth_date      DATE,
  education       VARCHAR(20),
  children_count  INT,
  employment_type VARCHAR(20),
  region          VARCHAR(50),
  marital_status  VARCHAR(15)
);

CREATE TABLE stg_loans (
  loan_id     INT PRIMARY KEY,
  client_id   INT,
  loan_amount NUMERIC(12,2),
  term_months INT,
  due_date    DATE
);
