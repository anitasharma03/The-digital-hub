	--Q1: Create a classic report that display order id or order no., customer_id , and customer address  

	select o.Order_ID, c.Customer_ID, c.Customer_Address, c.Zip
	from Customer_Order o 
	inner join Customer_Address c 
	on o.Customer_ID = c.Customer_ID 

	--Q2: Create a classic report that display the product id or product number that have been NOT sold to any customer.

	select distinct p.Product_ID, p.Product_Name from Products p 
	where p.Product_ID not in(select o.Product_ID from Order_Details o)
   
	--Q3: Create an interactive report that display the number of rows or entries in the customer, product and order tables 

	select  'Number of Customers' = (select count(*) from Customer), 
			'Number of Products' = (select count(*) from Products), 
			'Number of Orders' = (select count(*) from Customer_Order);

	--Q4: Create a classic report that display customer information including complete customer address (street, city and zip code)

	select c.Customer_ID, c.Customer_Name, c.Email_Address, c.Phone, 
	'address'= ca.Customer_Address+' '+cad.Zip+' '+cad.City+' '+cad.Customer_State
	from Customer c 
	inner join Customer_Address ca 
	on c.Customer_ID = ca.Customer_ID
	inner join ZIP cad
	on ca.Zip = cad.Zip

	--Q5: Create a classic report that display the last product id that sold to customer include customer id and (*customer name if you have it in your customer table)

	select c.Customer_ID, c.Customer_Name, o.Order_ID as Last_Order, od.Product_ID as ProductsID 
	from Customer c 
	inner join Customer_Order o 
	on c.Customer_ID = o.Customer_ID 
	inner join Order_Details od 
	on od.Order_ID = o.Order_ID
	where o.Order_ID in (select max(o2.Order_ID) as last_order from Customer_Order o2 
							inner join Customer c2 on 
							c2.Customer_ID = o2.Customer_ID
							 group by o2.Customer_ID)
	order by c.Customer_ID

	--Q6: Create a classic report that will display available quantity for each product in the store

	select oi.Product_ID, oi.Product_Name, sum(oi.Quantity) as Sold_Quantity, 
	i.Quantity-sum(oi.Quantity) as Available_Quantity 
	from Order_Details i 
	inner join Products oi 
	on oi.Product_ID = i.Product_ID 
	group by oi.Product_ID, oi.Product_Name, i.Quantity

	--Q7: Create a report that display product information (productid, desc, cost, and another information of your choice) and it is related inventory or store if there is any.

	select p.Product_ID, p.Product_Name, pd.Price, pd.Storage, pd.Product_Description, pd.Size, pd.Color 
	from Products p 
	inner join Product_Details pd 
	on p.Product_ID = pd.Product_ID 


	--Q8: Create a report that shows store address, order details and product information for the product with lowest list or cost price
	
	select p.Product_ID, p.Product_Name, pd.Price, pd.Size, od.Quantity, ca.Company_Name, ca.Company_Location
	from Products p 
	inner join Company ca
	on p.Company_Code = ca.Company_Code
	inner join  Product_Details pd 
	on p.Product_ID = pd.Product_ID
	inner join  Order_Details od 
	on p.Product_ID = od.Product_ID
	inner join (select sum(oi.Quantity) as total_ordered_quantity, oi.Product_ID 
	from Order_Details oi 
	group by oi.Product_ID) as o 
	on p.Product_ID = o.Product_ID
	where pd.Price = (select top(1) min(p3.Price) as Lowest_cost_price
	from Product_Details p3)

	--Q9: Create a report that display the amount paid by each customer for each order or invoice. Note that in each order you may have more then one product type.

	select i.Order_ID, i.Customer_ID, od.Quantity, od.Total_Amount 
	from Customer_Order i 
	inner join Order_Details od 
	on i.Order_ID = od.Order_ID

	--Q10: Create an interactive report that display customer information who paid the lowest amount for an order on an invoice.
	
	select c.Customer_ID, c.Customer_Name, c.Email_Address, c.Phone, q.Order_ID, i.Total_Amount, i.Quantity 
	from Customer c 
	inner join Customer_Order q 
	on q.Customer_ID = c.Customer_ID 
	inner join Order_Details i 
	on q.Order_ID=i.Order_ID
	where i.Total_Amount = (select top(1) min(i2.Total_Amount) as minAmount 
	from Order_Details i2)