CREATE TABLE Shipper(
    Shipper_ID VARCHAR(10) PRIMARY KEY,
    Shipper_Name CHAR(20) NOT NULL,
    Email_Address VARCHAR(30) NOT NULL,
    Phone NUMERIC NOT NULL,
    CONSTRAINT Phone_No CHECK(LEN(Phone)=10),
    CONSTRAINT Email CHECK(Email_Address LIKE '%_@_%')
);


INSERT INTO Shipper VALUES('SH01','Daniel', 'Daniel@gmail.com',4379821344);
INSERT INTO Shipper VALUES('SH02','Emma', 'Emma@gmail.com',4379821347);
INSERT INTO Shipper VALUES('SH03','Olivia', 'Olivia@gmail.com',4379821344);
INSERT INTO Shipper VALUES('SH04','Sophia', 'Sophia@gmail.com',4379821347);
INSERT INTO Shipper VALUES('SH05','Zoe', 'Zoe@gmail.com',4379821537);
INSERT INTO Shipper VALUES('SH06','Emily', 'Emily@gmail.com',4379821378);
INSERT INTO Shipper VALUES('SH07','Avery', 'Avery@gmail.com',4379821457);
INSERT INTO Shipper VALUES('SH08','Isabella', 'Isabella@gmail.com',4379821367);
INSERT INTO Shipper VALUES('SH09','Charlotte', 'Charlotte@gmail.com',4379845347);
INSERT INTO Shipper VALUES('SH10','Lily', 'Lily@gmail.com',4379821387);
INSERT INTO Shipper VALUES('SH11','Lily', 'Lily@gmail.com',4379821387);


SELECT * FROM Shipper
EXEC Sp_help  Shipper