CREATE TABLE Customer_Address(
    Customer_ID VARCHAR(10) PRIMARY KEY,
    Customer_Address VARCHAR(30) NOT NULL,
    Zip VARCHAR(10)
    CONSTRAINT Zip_Code_FK FOREIGN KEY (Zip)
    REFERENCES ZIP (Zip) 
);


INSERT INTO Customer_Address VALUES('C01','211 Westwood street','M1K314');
INSERT INTO Customer_Address VALUES('C02','2190 West','M1K315');
INSERT INTO Customer_Address VALUES('C03','271 EastWest street','M1K316');
INSERT INTO Customer_Address VALUES('C04','2441 Royall','M1K313');
INSERT INTO Customer_Address VALUES('C05','2781 Argyle Streett','M1K317');
INSERT INTO Customer_Address VALUES('C06','218 George Street','M1K319');
INSERT INTO Customer_Address VALUES('C07','2198 Halifax','M1K318');
INSERT INTO Customer_Address VALUES('C08','4411 Queen Bush Road','M1K320');
INSERT INTO Customer_Address VALUES('C09','331 Buttubs','M1K323');
INSERT INTO Customer_Address VALUES('C10','7851 Avenue Road','M1K324');


SELECT * FROM Customer_Address
EXEC Sp_help  Customer_Address