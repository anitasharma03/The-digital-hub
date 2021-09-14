CREATE TABLE Customer(
    Customer_ID VARCHAR(10) PRIMARY KEY,
    Customer_Name CHAR(20) NOT NULL,
    Email_Address VARCHAR(30) NOT NULL UNIQUE,
    Phone NUMERIC 
    CONSTRAINT Phone_Num CHECK(LEN(Phone)=10)
);
 

INSERT INTO Customer VALUES('C01','Daniel', 'Daniel@gmail.com',NULL);
INSERT INTO Customer VALUES('C02','Emma', 'Emma@gmail.com',4379821347);
INSERT INTO Customer VALUES('C03','Olivia', 'Olivia@gmail.com',4379821344);
INSERT INTO Customer VALUES('C04','Sophia', 'Sophia@gmail.com',NULL);
INSERT INTO Customer VALUES('C05','Zoe', 'Zoe@gmail.com',4379821537);
INSERT INTO Customer VALUES('C06','Emily', 'Emily@gmail.com',NULL);
INSERT INTO Customer VALUES('C07','Avery', 'Avery@gmail.com',4379821457);
INSERT INTO Customer VALUES('C08','Isabella', 'Isabella@gmail.com',NULL);
INSERT INTO Customer VALUES('C09','Charlotte', 'Charlotte@gmail.com',4379845347);
INSERT INTO Customer VALUES('C10','Lily', 'Lily@gmail.com',4379821387);


SELECT * FROM Customer
EXEC Sp_help  Customer