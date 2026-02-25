Jumia DB: Secure E-Commerce Database System
-
Project Overview

This repository contains a professional-grade relational database schema designed for a Jumia-style e-commerce platform. Developed by Kevin Axel,the project bridges the gap between Software Development and Cybersecurity by implementing a modular, secure-by-design database architecture.

The system manages complex business logic, including multi-branch operations, product inventory, and transaction tracking, all while maintaining strict data integrity protocols.

**Key Engineering & Security Achievements**
1. Security-First Architecture:Designed with a focus on data protection, utilizing `password_hash` protocols to advocate        for BCRYPT/Argon2 encryption over vulnerable plain-text storage.
2. Modular Migration Strategy:Implemented a versioned build process (v1–v9), mirroring real-world DevSecOps workflows for       controlled schema deployment.
3. Identity & Integrity:used `BIGINT` and `GENERATED ALWAYS AS IDENTITY` to ensure high-performance primary keys that are       resistant to sequence manipulation.
4. Scalable Organizational Logic:Engineered a Junction-Table system for Branch-to-Department mapping and another one for        vendors to products mapping, allowing national-scale scaling without data redundancy.
5. Relational Mapping:Mapped complex Many-to-Many relationships for logistics, payments, and delivery tracking.
-


 File Structure & Execution Order
To ensure the integrity of the Foreign Keys and prevent any errors from occurring, the SQL scripts must be executed in the numerical order listed below:



Order       File Name                    Purpose

1        v1_core_tables.sql        Base infrastructure and lookup tables.
2        v2_admin_tables.sql       Organizational hierarchy (Branches/Depts).
3        v3_accounts_table.sql     User accounts and secure credential storage.
4        v4_functionality.sql      Internal system logs and utilities.
5        v5_products_tables.sql    Inventory, categories, and stock management.
6        v6_orders_tables.sql      Transactional data and cart logic.
7        v7_payments_table.sql     Payment methods and billing history.
8        v8_deliveries_tables.sql  Logistics tracking and carrier details.
9        v9_reviews.sql            Customer sentiment and feedback data.

-Run the jumia_db_seed.sql Populate the system with realistic test data.


**Technical Specifications**
-DBMS:PostgreSQL
-Security Focus:Hashed Credential Mapping & Least Privilege Design
Data Architecture:3rd Normal Form (3NF)
Primary Keys:BIGINT (Identity)
Documentation:Included `jumia_ERD_versions for full Entity Relationship Diagram (ERD) mapping.

How to Setup & Test
1.  Clone the Repository:
    bash
    git clone https://github.com/elvinkevin/SQL-STUDY.git
    
2.  Initialize the Schema:
    Open your SQL tool (DBeaver, pgAdmin, or PSQL) and run files **v1 through v9** in sequence.
3.  Seed the Database:
    Execute 'jumia_db_seed.sql' to generate realistic customers, products, and orders for testing.

Author
Kevin Axel
Specialization:Software Development & Cybersecurity.


