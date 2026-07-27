🏠 Airbnb End-to-End Data Engineering Project
---------------------------------------------------------

Overview
Built an end-to-end Airbnb Data Engineering Pipeline using AWS S3, Snowflake, and dbt. The project follows the Medallion Architecture (Bronze → Silver → Gold) and demonstrates incremental data loading, metadata-driven transformations, reusable Jinja macros, data quality testing, and Slowly Changing Dimensions (SCD Type 2) using dbt Snapshots.

---------------------------------------------------------


Project Architecture

CSV Files
      │
      ▼
AWS S3
      │
      ▼
Snowflake Staging
      │
      ▼
Bronze Layer
      │
      ▼
Silver Layer
      │
      ▼
Gold Layer
      │
      ▼
Analytics / Reporting


---------------------------------------------------------


Technologies Used

| Category        | Technologies |
| --------------- | ------------ |
| Cloud Storage   | AWS S3       |
| Data Warehouse  | Snowflake    |
| Transformation  | dbt Core     |
| Language        | SQL, Jinja   |
| Version Control | Git          |
| IDE             | VS Code      |


---------------------------------------------------------


What I Learned

1. Data Engineering
2. End-to-End ETL Pipeline Development
3. Medallion Architecture
4. Incremental Loading
5. Metadata Driven Pipelines
6. Data Warehouse Modeling
7. Fact & Dimension Tables
8. One Big Table (OBT)


dbt

1. Models
2. Sources
3. Seeds
4. Snapshots
5. Incremental Models
6. Ephemeral Models
7. Materializations
8. Tests
9. Documentation
10. Lineage
11. Jinja Templating
12. Macros
13. Dynamic SQL


Snowflake
1. Schemas
2. Warehouses
3. COPY INTO
4. File Formats
5. Stages


---------------------------------------------------------


Project Features

1. Incremental Models
2. Custom Jinja Macros
3. Metadata Driven SQL
4. SCD Type 2 Snapshots
5. Data Quality Testing
6. Dynamic SQL Generation
7. Documentation using dbt Docs


---------------------------------------------------------


Project Structure

models/
      bronze/
      silver/
      gold/

macros/

snapshots/

tests/

analyses/

---------------------------------------------------------

Challenges & Solutions

| Challenge                      | Solution                                                    |
| ------------------------------ | ----------------------------------------------------------- |
| Incremental model duplicates   | Used `created_at` with `is_incremental()`                   |
| Jinja macro compilation errors | Corrected macro syntax and context variables                |
| Snapshot not updating          | Understood timestamp strategy and updated tracked columns   |
| Snowflake permission issues    | Fixed role ownership and grants                             |
| Dynamic SQL generation         | Implemented metadata-driven configuration using Jinja loops |
| Data type mismatch             | Applied explicit casting and transformation logic           |


---------------------------------------------------------

Key dbt Concepts Implemented

✔ Incremental Models
✔ Snapshots
✔ Ephemeral Models
✔ Custom Macros
✔ Metadata Driven Pipeline
✔ Dynamic SQL
✔ Jinja Loops
✔ Tests
✔ dbt Docs
✔ Source Configuration
✔ Data Lineage


---------------------------------------------------------

Commands Used

dbt debug
dbt run
dbt test
dbt snapshot
dbt build
dbt docs generate
dbt docs serve


---------------------------------------------------------


Skills Demonstrated

✔ SQL
✔ Snowflake
✔ dbt Core
✔ AWS S3
✔ Incremental ETL
✔ Metadata Driven Pipeline
✔ SCD Type 2
✔ Jinja
✔ Git
✔ Data Warehousing
✔ Data Modeling
✔ Data Quality Testing


---------------------------------------------------------

Key Learnings from the Project

✔ Built modular and reusable dbt models using Jinja macros.
✔ Learned how incremental processing reduces data processing time.
✔ Implemented SCD Type 2 using dbt Snapshots to preserve historical records.
✔ Designed metadata-driven SQL pipelines to simplify model maintenance.
✔ Improved debugging skills by resolving compilation errors, schema permission issues, macro errors, and data type mismatches.
✔ Understood how dbt documentation and lineage help manage transformation dependencies.


---------------------------------------------------------
