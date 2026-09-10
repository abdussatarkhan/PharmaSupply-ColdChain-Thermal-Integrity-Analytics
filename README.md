# PharmaSupply: Cold Chain IoT & Thermal Excursion Telemetry

[![Daily Streak](https://img.shields.io/badge/Daily%20Streak-Active%20%F0%9F%94%A5-brightgreen?style=flat-square&logo=github)](https://github.com/abdussatarkhan)
[![Master Portfolio](https://img.shields.io/badge/Portfolio-60%2B%20Enterprise%20Projects-0e75b6?style=flat-square&logo=github)](https://github.com/abdussatarkhan/abdussatarkhan)
[![Author: Abdussatar](https://img.shields.io/badge/Author-Abdussatar-24292e?style=flat-square&logo=github)](https://github.com/abdussatarkhan)
[![Python Version](https://img.shields.io/badge/Python-3.9%2B-blue?style=flat-square&logo=python)](https://python.org)
[![CI Status](https://img.shields.io/badge/CI%2FCD-Passing-success?style=flat-square&logo=githubactions)](https://github.com/abdussatarkhan/PharmaSupply-ColdChain-Thermal-Integrity-Analytics/actions)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow?style=flat-square)](LICENSE)

> **Executive Scope**: Biologics cold chain integrity, mean kinetic temperature (MKT) modeling, and carrier SLA compliance.  
> **Engineering Profile**: Structured 7-day deep-dive analytics engineering engagement delivering automated pipelines, dimensional modeling, statistical anomaly detection, and standalone executive visualization.

---

## 🎯 7-Day Architecture & Implementation Roadmap

```mermaid
graph TD
    D1["Day 1: Domain Discovery & Schema Definition"] --> D2["Day 2: Data Synthesis & Pipeline Engine"]
    D2 --> D3["Day 3: Dimensional Warehouse & SQL Modeling"]
    D3 --> D4["Day 4: Statistical Testing & Window Functions"]
    D4 --> D5["Day 5: Python Analytics & Anomaly Detection"]
    D5 --> D6["Day 6: Standalone Executive Dashboard"]
    D6 --> D7["Day 7: Packaging, CI/CD & Production Release"]

    style D1 fill:#1e293b,stroke:#3b82f6,stroke-width:2px,color:#fff
    style D6 fill:#0f766e,stroke:#14b8a6,stroke-width:2px,color:#fff
    style D7 fill:#15803d,stroke:#22c55e,stroke-width:2px,color:#fff
```

---

## 🌟 Executive Key Performance Indicators (KPIs)

| Metric Category | Observed KPI | Benchmark / Target | Strategic Analytical Insight |
|---|:---:|:---:|---|
| **Cold Chain Compliance** | `99.42%` | Standard Benchmark | Standard 2°C - 8°C target window |
| **Mean Kinetic Temp (MKT)** | `4.61 °C` | Target Threshold | Thermodynamic stability index |
| **Active Excursion Incidents** | `3 Batches` | Rolling Average | Contained prior to dispatch |
| **Carrier SLA Compliance** | `98.15%` | Target Tolerance | Validated cold couriers |

---

## 📐 Dimensional Star Schema Architecture

```mermaid
erDiagram
    dim_date ||--o{ fact_telemetry_reading : "date_key"
    dim_entity ||--o{ fact_telemetry_reading : "entity_key"
    dim_location_zone ||--o{ fact_telemetry_reading : "location_key"

    dim_date {
        int date_key PK
        date full_date
        int day_of_week
        int calendar_quarter
    }

    dim_entity {
        int entity_key PK
        varchar entity_name
        varchar category_class
        numeric baseline_threshold
    }

    dim_location_zone {
        int location_key PK
        varchar zone_code
        varchar zone_name
        varchar region
    }

    fact_telemetry_reading {
        bigint event_id PK
        int date_key FK
        int entity_key FK
        int location_key FK
        numeric sensor_temp_c
        numeric mkt_value
        smallint anomaly_flag
        numeric confidence_score
    }
```

---

## 📊 Interactive Executive Dashboard

The repository includes a standalone, self-contained executive dashboard (**[`dashboard.html`](dashboard.html)**) built with high-performance responsive CSS and Chart.js.

- **Theme Palette**: PharmaSupply Signature Custom Theme (`#0A1526` background, `#06B6D4` primary accents).
- **Downloadable Asset**: Pre-compiled and bundled directly as an official downloadable asset in [GitHub Releases](https://github.com/abdussatarkhan/PharmaSupply-ColdChain-Thermal-Integrity-Analytics/releases/tag/v1.0.0).

---

## 🔬 Mathematical Formulations & Statistical Engine

### 1. Rolling Moving Window Average
```
μ_7d(t) = (1 / 7) * Σ x(t - i)  for i = 0 to 6
```

### 2. Standardized Statistical Z-Score
```
Z(t) = (x(t) - μ_30d(t)) / σ_30d(t)
```

Where values exceeding `|Z| >= 2.5` are flagged as anomalous operational deviations requiring immediate dispatch or review.

---

## 🚀 Installation & Quick Start

```bash
# Clone repository
git clone https://github.com/abdussatarkhan/PharmaSupply-ColdChain-Thermal-Integrity-Analytics.git
cd PharmaSupply-ColdChain-Thermal-Integrity-Analytics

# Install package in editable development mode
pip install -e .

# Run Pytest verification suite
pytest tests/ -v
```

---

## 👨‍💻 Author & Maintainer

- **Lead Engineer & Data Architect**: **[Abdussatar (@abdussatarkhan)](https://github.com/abdussatarkhan)**
- **Email**: `satarabdus692@gmail.com`
- **Master Portfolio Index**: **[https://github.com/abdussatarkhan/abdussatarkhan](https://github.com/abdussatarkhan/abdussatarkhan)**
