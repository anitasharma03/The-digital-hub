/* Create a simple view based on a table */

CREATE VIEW USER_VIEW AS 
SELECT Product_ID , Product_Name
FROM Products

SELECT * FROM USER_VIEW

/* Modify views by adding column. */

ALTER VIEW USER_VIEW AS
  select Product_ID , Product_Name
         ,Quantity
  from Products

SELECT * FROM USER_VIEW 

