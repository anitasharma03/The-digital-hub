CREATE TABLE Company(
    Company_code  VARCHAR(10) PRIMARY KEY,
    Company_Name CHAR(30) NOT NULL,
    Company_Type CHAR(10) NOT NULL,
    Company_Location VARCHAR(30) 
);


INSERT INTO Company VALUES('TDG001' , 'The Digital Hub' , 'Retailer' , 'TORONTO');
  

SELECT * FROM Company  

EXEC Sp_help Company