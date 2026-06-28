
CREATE TABLE error_logs (
    err_id BIGSERIAL PRIMARY KEY,
    execution_id BIGINT,
    company_id BIGINT,
    company_name VARCHAR(200) NOT NULL,
    node_name VARCHAR(100),
    api_url TEXT,
    http_status INTEGER,
    error_message TEXT,
    err_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);