-- ==========================================================
-- Enterprise Dimensional Star Schema: PharmaSupply: Cold Chain IoT & Thermal Excursion Telemetry
-- Target RDBMS: PostgreSQL 16+ / Snowflake / BigQuery
-- Engineer: Abdussatar (@abdussatarkhan)
-- ==========================================================

-- Dimension: Date
CREATE TABLE dim_date (
    date_key INT PRIMARY KEY,
    full_date DATE NOT NULL,
    day_of_week INT NOT NULL,
    calendar_month INT NOT NULL,
    calendar_quarter INT NOT NULL,
    calendar_year INT NOT NULL,
    is_weekend BOOLEAN NOT NULL
);

-- Dimension: Entity (PharmaSupply)
CREATE TABLE dim_entity (
    entity_key SERIAL PRIMARY KEY,
    entity_id VARCHAR(64) UNIQUE NOT NULL,
    entity_name VARCHAR(128) NOT NULL,
    category_class VARCHAR(64) NOT NULL,
    baseline_threshold NUMERIC(10, 4) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Dimension: Location / Zone
CREATE TABLE dim_location_zone (
    location_key SERIAL PRIMARY KEY,
    zone_code VARCHAR(32) UNIQUE NOT NULL,
    zone_name VARCHAR(128) NOT NULL,
    region VARCHAR(64) NOT NULL,
    tier_level INT NOT NULL
);

-- Fact Table: Primary Telemetry
CREATE TABLE fact_telemetry_reading (
    event_id BIGSERIAL PRIMARY KEY,
    date_key INT NOT NULL REFERENCES dim_date(date_key),
    entity_key INT NOT NULL REFERENCES dim_entity(entity_key),
    location_key INT NOT NULL REFERENCES dim_location_zone(location_key),
    sensor_temp_c NUMERIC(12, 4) NOT NULL,
    mkt_value NUMERIC(12, 4) NOT NULL,
    anomaly_flag SMALLINT DEFAULT 0,
    confidence_score NUMERIC(5, 4) NOT NULL,
    ingestion_timestamp TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_fact_telemetry_reading_date ON fact_telemetry_reading(date_key);
CREATE INDEX idx_fact_telemetry_reading_entity ON fact_telemetry_reading(entity_key);
CREATE INDEX idx_fact_telemetry_reading_anomaly ON fact_telemetry_reading(anomaly_flag);
