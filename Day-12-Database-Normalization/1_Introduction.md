# Day 12 - Database Normalization (Introduction)

Welcome to Day 12! Today we are learning about Database Normalization, which is the backbone of a well-designed database.

## What is Normalization?
Normalization is a database design technique that organizes tables in a manner that reduces redundancy (duplicate data) and dependency of data. It divides large tables into smaller, related tables using relationships (foreign keys).

## Why do we need it?
If a database is not normalized (e.g., storing all data in one single massive table), it leads to 3 major problems called **Data Anomalies**:
1. **Insertion Anomaly:** Cannot insert data without inserting unrelated data. (E.g., Cannot add a new department unless an employee joins it).
2. **Update Anomaly:** If data is duplicated, updating it in one place but forgetting to update it in another place leads to inconsistency.
3. **Deletion Anomaly:** Deleting one record accidentally deletes other important information.

## The Goal
The goal of normalization is to isolate data so that additions, deletions, and modifications of a field can be made in just one table and then propagated through the rest of the database via defined relationships.
