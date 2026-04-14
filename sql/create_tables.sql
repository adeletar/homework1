CREATE TABLE dim_applicant (
    applicant_id INT PRIMARY KEY,
    applicant_name TEXT
);

CREATE TABLE dim_location (
    location_id INT PRIMARY KEY,
    city TEXT,
    region TEXT
);

CREATE TABLE dim_project (
    project_id INT PRIMARY KEY,
    project_title TEXT,
    summary TEXT
);

CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    fiscal_year INT
);

CREATE TABLE fact_application (
    application_id INT PRIMARY KEY,
    applicant_id INT,
    location_id INT,
    project_id INT,
    date_id INT,
    amount DECIMAL(12,2)
);
