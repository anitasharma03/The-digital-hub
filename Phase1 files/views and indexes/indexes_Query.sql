/* Create two indexes for two different tables. */

CREATE INDEX Customer_index 
ON Customer(
    Customer_Name,Email_Address, Phone
);


CREATE INDEX Shipper_index
ON Shipper(Shipper_ID);


/* Drop one index. */


DROP INDEX Index_One ON Customer;