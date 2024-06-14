-- 000001_create_cve_table.up.sql

-- Create the cve schema if it doesn't exist
CREATE SCHEMA IF NOT EXISTS cve;

-- Create the cve table within the cve schema
CREATE TABLE IF NOT EXISTS cve.cve (
    id SERIAL PRIMARY KEY,
    cve_id VARCHAR(50) NOT NULL,
    version TIMESTAMP NOT NULL,
    json_data JSONB NOT NULL,
    date_published TIMESTAMP NOT NULL,
    date_updated TIMESTAMP NOT NULL,
    UNIQUE(cve_id, version)
);

CREATE INDEX IF NOT EXISTS idx_cve_id ON cve.cve(cve_id);
CREATE INDEX IF NOT EXISTS idx_date_updated ON cve.cve(date_updated);
CREATE INDEX IF NOT EXISTS idx_version ON cve.cve(version);
CREATE INDEX IF NOT EXISTS idx_cve_json_data_gin ON cve.cve USING GIN (json_data);
