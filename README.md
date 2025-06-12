# MovieLens Analytics Pipeline with dbt, Snowflake & AWS

This project is an end-to-end data transformation pipeline using the **MovieLens 20M** dataset. It demonstrates how to build a modern analytics stack using distributed systems and cloud-native tools. 

## 📦 Dataset
- MovieLens 20M: 20 million ratings, 138,000 users, 27,000 movies.
- Includes tag genome data and movie metadata.
- [Dataset Source](https://grouplens.org/datasets/movielens/20m/)

## 🛠️ Tools & Architecture
- **Cloud Storage**: AWS S3 for data staging
- **Data Warehouse**: Snowflake (scalable, columnar cloud data warehouse)
- **Transformation**: dbt (data build tool) for version-controlled, modular SQL pipelines

## 🧱 Project Structure
- **Staging Models**: Load raw data and clean basic fields
- **Dimensional Models**: `dim_movies`, `dim_users`, `dim_genome_tags`
- **Fact Model**: `fct_ratings` with millions of records and incremental updates
- **Snapshots**: SCD Type 2 logic for historical tracking (e.g., user profiles)
- **Testing**: dbt tests for nulls, uniqueness, referential integrity
- **Documentation**: Auto-generated with dbt docs
- **Macros & Packages**: Reusable SQL patterns and community packages

## 📈 Key Features
- Incremental models for efficient handling of large datasets
- Full support for ETL workflows using dbt + Snowflake
- Data lineage visualization with DAG
- Schema enforcement & test coverage
- Modular, production-grade data modeling
  
