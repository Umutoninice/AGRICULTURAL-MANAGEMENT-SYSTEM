# Farmer and Crop Management System (Using Oracle as RDBMS)

This README provides an overview of the **Farmer and Crop Management System**, designed to manage information related to farmers, fields, crops, sales, and customers. The system includes tables for Farmers, Fields, Crops, Sales, and Customers, supporting efficient tracking of crop production and sales management.

## Table Structures

### 1. Farmers Table
The `Farmers` table stores information about farmers, including their contact details, role, hire date, and salary.

```sql
CREATE TABLE FARMERS (
    FARMERID NUMBER PRIMARY KEY,              -- Unique identifier for each farmer
    NAME VARCHAR2(150) NOT NULL,              -- Name of the farmer
    CONTACT NUMBER,                           -- Farmer's contact number
    ROLE VARCHAR2(200),                       -- Farmer's role (e.g., Manager, Trader)
    HIREDATE DATE,                            -- Date the farmer was hired
    SALARY NUMBER                             -- Farmer's salary
);
