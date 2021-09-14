CREATE TABLE Products(
    Product_ID NUMERIC PRIMARY KEY ,
    Product_Name CHAR(30) NOT NULL,
    Quantity NUMERIC NOT NULL,
    Company_code VARCHAR(10) 
    CONSTRAINT Company_code_FK FOREIGN KEY (Company_code)
    REFERENCES Company(Company_code) 
);


CREATE SEQUENCE Generate_ProductID
START WITH 101
INCREMENT BY 1;

INSERT INTO Products (Product_ID,Product_Name,Quantity,Company_code) VALUES (NEXT VALUE FOR Generate_ProductID,'Dell Inspiral' , 20 ,'TDG001');
INSERT INTO Products (Product_ID,Product_Name,Quantity,Company_code) VALUES (NEXT VALUE FOR Generate_ProductID,'Iphone 7' , 25 ,'TDG001');
INSERT INTO Products (Product_ID,Product_Name,Quantity,Company_code) VALUES (NEXT VALUE FOR Generate_ProductID,'Samsung Galaxy S' , 45,'TDG001' );
INSERT INTO Products (Product_ID,Product_Name,Quantity,Company_code) VALUES (NEXT VALUE FOR Generate_ProductID,'Samsung Galaxy S4' , 23,'TDG001' );
INSERT INTO Products (Product_ID,Product_Name,Quantity,Company_code) VALUES (NEXT VALUE FOR Generate_ProductID,'Samsung Galaxy S5' , 20 ,'TDG001');
INSERT INTO Products (Product_ID,Product_Name,Quantity,Company_code) VALUES (NEXT VALUE FOR Generate_ProductID,'Iphone 3G' , 38 ,'TDG001');
INSERT INTO Products (Product_ID,Product_Name,Quantity,Company_code) VALUES (NEXT VALUE FOR Generate_ProductID,'Iphone 4S' , 26 ,'TDG001');
INSERT INTO Products (Product_ID,Product_Name,Quantity,Company_code) VALUES (NEXT VALUE FOR Generate_ProductID,'Apple MacBook Pro' , 45 ,'TDG001');
INSERT INTO Products (Product_ID,Product_Name,Quantity,Company_code) VALUES (NEXT VALUE FOR Generate_ProductID,'Samsung Galaxy Tab A' , 32 ,'TDG001');
INSERT INTO Products (Product_ID,Product_Name,Quantity,Company_code) VALUES (NEXT VALUE FOR Generate_ProductID,'Samsung Galaxy Tab 7' , 37 ,'TDG001');

SELECT * FROM Products

EXEC Sp_help Products