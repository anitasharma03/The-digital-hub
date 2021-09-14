CREATE TABLE Product_Details(
    Product_Details_ID VARCHAR(10) PRIMARY KEY ,
    Storage VARCHAR(5) NOT NULL,
    Product_Description VARCHAR(200),
    Size VARCHAR(15) NOT NULL,
    Color CHAR(15) NOT NULL,
    Price VARCHAR(5) NOT NULL,
    Product_ID NUMERIC 
    CONSTRAINT Product_ID_FK FOREIGN KEY (Product_ID)
    REFERENCES Products (Product_ID) 
);


INSERT INTO Product_Details VALUES('DI01' , '256GB','NULL' , '15 INCH' , 'Space Gray', '$1499' , 101);
INSERT INTO Product_Details VALUES('IP701' , '64GB','NULL' , '6.1 INCH' , 'Black', '$1400' , 102);
INSERT INTO Product_Details VALUES('GT701' , '128GB','NULL' , '11.2 INCH' , 'Gold', '$799' , 103);
INSERT INTO Product_Details VALUES('GS01' , '64GB','NULL' , '6 INCH' , 'Black', '$899' , 104);
INSERT INTO Product_Details VALUES('GS401' , '16GB','NULL' , '6 INCH' , 'Dark Blue', '$800' , 105);
INSERT INTO Product_Details VALUES('GS501' , '64GB','NULL' , '6.2 INCH' , 'Blue', '$1000' , 106);
INSERT INTO Product_Details VALUES('IP301' , '16GB','NULL' , '5.9 INCH' , 'Space Gray', '$750' , 107);
INSERT INTO Product_Details VALUES('IP401' , '16GB','NULL' , '5.3 INCH' , 'Rose Gold', '$800' , 108);
INSERT INTO Product_Details VALUES('AMP01' , '256GB','NULL' , '13 INCH' , 'Silver', '$1900' , 109);
INSERT INTO Product_Details VALUES('GTA01' , '128GB','NULL' , '10 INCH' , 'Gray', '$900' , 110);


SELECT * FROM Product_Details

EXEC Sp_help Product_Details