CREATE TABLE FARMERS( FARMERID NUMBER PRIMARY KEY,NAME VARCHAR(150), CONTACT INT,ROLE VARCHAR(200),HIREDATE DATE,SALARY int);
COMMIT;
CREATE TABLE SALES ( SALEID NUMBER PRIMARY KEY,QUANTITY NUMBER,SALEDATE DATE,TOTALAMOUNT NUMBER);
COMMIT;
CREATE TABLE FIELDS ( FIELDID NUMBER PRIMARY KEY,FIELDNAME VARCHAR(200),FIELD_SIZE INT, LOCATION VARCHAR(200),SOILTYPE VARCHAR(200));
COMMIT;
CREATE TABLE CROPS (CROPID NUMBER PRIMARY KEY,CROPNAME VARCHAR(100),PLANTING_DATE DATE,HARVEST_DATE DATE,YIELD VARCHAR(200),FIELDID NUMBER, FOREIGN KEY (FIELDID) REFERENCES FIELDS(FIELDID));
COMMIT;
CREATE TABLE CUSTOMERS (CUSTOMERID NUMBER PRIMARY KEY, CUSTOMER_NAME VARCHAR(200),CONTACT NUMBER, ADDRESS VARCHAR(200));
COMMIT;
ALTER TABLE SALES ADD CUSTOMERID NUMBER;
COMMIT;
ALTER TABLE SALES ADD CROPID NUMBER;
COMMIT;
ALTER TABLE SALES ADD FOREIGN KEY (CUSTOMERID) REFERENCES CUSTOMERS(CUSTOMERID);
COMMIT;
ALTER TABLE SALES ADD FOREIGN KEY (CROPID) REFERENCES CROPS(CROPID);
COMMIT;