# AGRICULTURAL-MANAGEMENT-SYSTEM
This documentation provides an overview of the Farmer and Crop Management Database, designed to manage information related to farmers, crops, sales, and field details. The database allows efficient tracking of farmers, their roles, sales records, field information, and crop yields. The schema includes tables for farmers, sales, fields, crops, and customers.

Table Structures
1. Farmers Table
The Farmers table stores information about farmers, including their contact details, role, hire date, and salary.



CREATE TABLE FARMERS (
    FARMERID NUMBER PRIMARY KEY,            -- Unique identifier for each farmer
    NAME VARCHAR(150) NOT NULL,             -- Name of the farmer
    CONTACT NUMBER,                         -- Farmer's contact number
    ROLE VARCHAR(200),                      -- Role of the farmer (e.g., Manager, Trader)
    HIREDATE DATE,                          -- Date the farmer was hired
    SALARY NUMBER                           -- Salary of the farmer
);
2. Fields Table
The Fields table stores information about the fields where crops are planted, including the size, location, and soil type.

CREATE TABLE FIELDS (
    FIELDID NUMBER PRIMARY KEY,            -- Unique identifier for each field
    FIELDNAME VARCHAR(200) NOT NULL,       -- Name of the field
    FIELD_SIZE NUMBER,                     -- Size of the field (in acres)
    LOCATION VARCHAR(200),                 -- Physical location of the field
    SOILTYPE VARCHAR(200)                  -- Type of soil in the field (e.g., Clay, Loamy, Sandy)
);
3. Crops Table
The Crops table stores information about crops, including planting and harvest dates, yield, and the field where the crop was planted.


CREATE TABLE CROPS (
    CROPID NUMBER PRIMARY KEY,             -- Unique identifier for each crop
    CROPNAME VARCHAR(100) NOT NULL,        -- Name of the crop (e.g., Beans, Potatoes)
    PLANTING_DATE DATE,                    -- Date the crop was planted
    HARVEST_DATE DATE,                     -- Date the crop was harvested
    YIELD VARCHAR(200),                    -- Yield of the crop (in kg)
    FIELDID NUMBER,                        -- Foreign key referencing the FIELDS table
    FOREIGN KEY (FIELDID) REFERENCES FIELDS(FIELDID) -- Establishes relationship with the FIELDS table
);
4. Sales Table
The Sales table stores information about sales transactions, including quantity sold, sale date, total amount, and references to the crop and customer involved.


CREATE TABLE SALES (
    SALEID NUMBER PRIMARY KEY,             -- Unique identifier for each sale
    QUANTITY NUMBER,                       -- Quantity of the crop sold
    SALEDATE DATE,                         -- Date of the sale
    TOTALAMOUNT NUMBER,                    -- Total amount for the sale
    CUSTOMERID NUMBER,                     -- Foreign key referencing the CUSTOMERS table
    CROPID NUMBER,                         -- Foreign key referencing the CROPS table
    FOREIGN KEY (CUSTOMERID) REFERENCES CUSTOMERS(CUSTOMERID), -- Relationship with CUSTOMERS table
    FOREIGN KEY (CROPID) REFERENCES CROPS(CROPID)             -- Relationship with CROPS table
);
5. Customers Table
The Customers table stores information about customers, including their name, contact information, and address.


CREATE TABLE CUSTOMERS (
    CUSTOMERID NUMBER PRIMARY KEY,         -- Unique identifier for each customer
    CUSTOMER_NAME VARCHAR(200),            -- Name of the customer
    CONTACT NUMBER,                        -- Customer's contact number
    ADDRESS VARCHAR(200)                   -- Customer's address
);
Data Insertion
The following SQL commands insert sample data into the tables:

Insert Farmers

INSERT INTO FARMERS VALUES(1, 'KALISA', 0788888888, 'MANAGER', TO_DATE('12-12-2023', 'DD-MM-YYYY'), 200000);
INSERT INTO FARMERS VALUES(2398, 'KAMALIZA', 0798765432, 'TRADER', TO_DATE('20-02-2021', 'DD-MM-YYYY'), 150000);
Insert Fields

INSERT INTO FIELDS VALUES(309, 'AMAHORO', 20, 'HUYE', 'CLAY');
INSERT INTO FIELDS VALUES(209, 'HINGA WEZA', 36, 'KAYONZA', 'LOAMY');
INSERT INTO FIELDS VALUES(109, 'RAMIRO', 17, 'BUGESERA', 'SANDY');
Insert Crops

INSERT INTO CROPS VALUES(11, 'MUSHROOM', TO_DATE('30-09-2022', 'DD-MM-YYYY'), TO_DATE('27-12-2022', 'DD-MM-YYYY'), '150KG', 109);
INSERT INTO CROPS VALUES(22, 'SWEET_POTATOES', TO_DATE('24-07-2021', 'DD-MM-YYYY'), TO_DATE('18-06-2022', 'DD-MM-YYYY'), '300KG', 309);
INSERT INTO CROPS VALUES(33, 'BEANS', TO_DATE('20-02-2021', 'DD-MM-YYYY'), TO_DATE('29-03-2022', 'DD-MM-YYYY'), '400KG', 209);
Insert Customers

INSERT INTO CUSTOMERS VALUES(1, 'JOHN DOE', 0789123456, 'KIGALI, RWANDA');
INSERT INTO CUSTOMERS VALUES(2, 'JANE SMITH', 0798765432, 'HUYE, RWANDA');
Insert Sales

INSERT INTO SALES (SALEID, QUANTITY, SALEDATE, TOTALAMOUNT, CUSTOMERID, CROPID) 
VALUES (1, 100, TO_DATE('01-01-2023', 'DD-MM-YYYY'), 150000, 1, 11);
Updating and Deleting Data
Update Crop Name

UPDATE CROPS SET CROPNAME = 'FRUITS' WHERE CROPID = 33;
Delete Farmer

DELETE FROM FARMERS WHERE NAME = 'LISA';
Database Queries
You can query the data using SQL commands. Here are some examples:

Select Crops with a Specific Crop ID

SELECT * FROM CROPS WHERE CROPID = 33;
View Table Structure
You can view the structure of any table using the DESCRIBE command:


DESCRIBE CUSTOMERS;
DESCRIBE CROPS;
DESCRIBE FIELDS;
Conclusion
The Farmer and Crop Management Database is designed to help manage agricultural information related to farmers, fields, crops, sales, and customers. This system provides a solid foundation for tracking the entire lifecycle of crop management, from planting to sale.

License
This project is licensed under the MIT License. You are free to use, copy, modify, and distribute this software with appropriate attribution.
