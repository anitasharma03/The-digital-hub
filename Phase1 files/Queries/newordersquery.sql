CREATE TABLE Orders_table (
    Order_ID VARCHAR(10) PRIMARY KEY,
    Order_Date DATE NOT NULL,
    Order_Status CHAR(15) NOT NULL DEFAULT 'Pending'
    CONSTRAINT Order_status_ck CHECK (Order_Status ='Pending' OR Order_Status = 'Delivered' OR Order_Status ='Action Required'),
    Customer_ID VARCHAR(10)
    CONSTRAINT Orders_table_Customer_ID_FK FOREIGN KEY (Customer_ID)
    REFERENCES Customer (Customer_ID),
    Shipper_ID VARCHAR(10)
    CONSTRAINT Orders_table_Shipper_ID_FK FOREIGN KEY (Shipper_ID)
    REFERENCES Shipper (Shipper_ID),
    CONSTRAINT Orders_table_shipper_id_ck CHECK( Order_ID LIKE 'COR%')
);

INSERT INTO Orders_table VALUES('COR01','2020-12-17','Pending','C01','SH01');
INSERT INTO Orders_table VALUES('COR02','2020-12-17','Pending','C02','SH02');
INSERT INTO Orders_table VALUES('COR03','2020-12-15','Delivered','C03','SH03');
INSERT INTO Orders_table VALUES('COR04','2020-12-13','Delivered','C04','SH04');
INSERT INTO Orders_table VALUES('COR05','2020-12-19','Pending','C05','SH05');
INSERT INTO Orders_table VALUES('COR06','2020-12-01','Delivered','C06','SH06');
INSERT INTO Orders_table VALUES('COR07','2020-12-05','Delivered','C07','SH07');
INSERT INTO Orders_table VALUES('COR08','2020-12-19','Pending','C08','SH08');
INSERT INTO Orders_table VALUES('COR09','2020-12-18','Pending','C09','SH09');
INSERT INTO Orders_table VALUES('COR10','2020-12-02','Delivered','C10','SH10');
INSERT INTO Orders_table VALUES('CO7711','2020-12-18','Pending','C10','SH10');

SELECT * FROM Orders_table