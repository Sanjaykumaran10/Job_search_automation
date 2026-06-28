CREATE TABLE execution_history (
    execution_id BIGSERIAL PRIMARY KEY,
    execution_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    execution_time_ms INTEGER,
    status VARCHAR(20),
    companies_processed INTEGER DEFAULT 0,
    successful_companies INTEGER DEFAULT 0,
    failed_companies INTEGER DEFAULT 0,
    jobs_found INTEGER DEFAULT 0,
    new_jobs_inserted INTEGER DEFAULT 0,
    duplicate_jobs INTEGER DEFAULT 0,
    error_message TEXT
);