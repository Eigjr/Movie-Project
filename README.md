## Data Ingestion & Transformation Pipeline with Python and PostgreSQL

This project demonstrates a simple but robust **data pipeline architecture** where raw data 
is ingested from Google Drive, stored in a PostgreSQL database (bronze layer), cleaned and transformed, 
and finally stored in a refined silver layer for downstream analytics.

# Project Overview
The goal of this pipeline is to demonstrate an end-to-end flow of how raw data can be ingested, 
cleaned, and made analytics-ready using Python, SQLAlchemy, and PostgreSQL.

## 📁 Project Structure
# Work Flow
├── data/
│ └── raw_data.csv # Downloaded dataset from Google Drive
├── scripts/
│ ├── ingest.py # Ingest raw data using gdown
│ ├── load_bronze.py # Load data into PostgreSQL (Bronze)
│ ├── transform_clean.py # Data cleaning, standardization
│ └── load_silver.py # Load transformed data into Silver layer
├── models/
│ └── schema.sql # PostgreSQL table definitions
├── README.md # Project documentation
├── requirements.txt # Python dependencies


## Data Flow Process
1. Ingestion from Google Drive
The raw dataset was hosted on Google Drive and downloaded using the gdown Python package.
This allows easy access and automation of data retrieval from a shared Google Drive link.

# 2. Loading into PostgreSQL (Bronze Layer)
The raw, unmodified dataset was loaded into a PostgreSQL database using SQLAlchemy.
This stage—referred to as the bronze layer—preserves the original structure and content of
the data as it was obtained, ensuring data traceability.

# 3. Data Cleaning and Transformation
Using SQL queries within pgAdmin, the raw data was processed to improve quality and usability. This stage included:

--Removing or handling missing and duplicate values

--Standardizing column formats (e.g., date formats, text casing)

--Normalizing data entries

--Deriving new columns for enhanced insights

# 4. Loading into the Silver Layer
After cleaning and transforming the dataset, it was inserted into a refined silver layer within the same PostgreSQL database. 
The silver layer stores structured and consistent data that is ready for analysis, reporting, or further processing.

# 5. Gold layer
