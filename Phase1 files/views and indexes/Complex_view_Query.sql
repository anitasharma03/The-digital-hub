CREATE VIEW product_description_view
AS
SELECT  prod.Product_ID,
        prod.Product_Name, 
        detail.Size,
        detail.Color,
        detail.Price, 
        ord.Quantity   
FROM Products prod
INNER JOIN Product_Details detail
ON prod.Product_ID = detail.Product_ID
INNER JOIN Order_Details ord
ON prod.Product_ID = ord.Product_ID


SELECT * FROM product_description_view