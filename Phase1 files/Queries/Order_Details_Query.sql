CREATE TABLE Order_Details(
    Details_ID VARCHAR(10) PRIMARY KEY,
    Quantity NUMERIC NOT NULL,
    Product_Price NUMERIC,
    Order_ID VARCHAR(10)
    CONSTRAINT Order_ID_FK FOREIGN KEY (Order_ID)
    REFERENCES Customer_Order (Order_ID),
    Product_ID NUMERIC
    CONSTRAINT Product_Code_FK FOREIGN KEY (Product_ID)
    REFERENCES Products (Product_ID),
    Product_Details_ID VARCHAR(10)
    CONSTRAINT Product_Details_ID_FK FOREIGN KEY (Product_Details_ID)
    REFERENCES Product_Details (Product_Details_ID),
    CONSTRAINT Minimum_Order CHECK(Product_Price * Quantity > 850)
);

ALTER TABLE Order_Details
ADD Total_Amount AS(Quantity * Product_Price);

INSERT INTO Order_Details VALUES('DTID01',3,1000,'COR01',101,'DI01');
INSERT INTO Order_Details VALUES('DTID02',1,899,'COR02',102,'IP701');
INSERT INTO Order_Details VALUES('DTID03',4,899,'COR03',103,'GT701');
INSERT INTO Order_Details VALUES('DTID04',9,800,'COR04',104,'GS01');
INSERT INTO Order_Details VALUES('DTID05',3,1000,'COR05',105,'GS401');
INSERT INTO Order_Details VALUES('DTID06',1,1900,'COR06',106,'GS501');
INSERT INTO Order_Details VALUES('DTID07',3,900,'COR07',107,'IP301');
INSERT INTO Order_Details VALUES('DTID08',4,899,'COR08',108,'IP401');
INSERT INTO Order_Details VALUES('DTID09',3,1400,'COR09',109,'AMP01');
INSERT INTO Order_Details VALUES('DTID10',2,900,'COR10',110,'GTA01');


SELECT * FROM Order_Details

EXEC Sp_help  Order_Details