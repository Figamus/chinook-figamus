/*Provide a query only showing the Customers from Brazil.*/

SELECT
	c.CustomerId,
	c.FirstName ||' ' || c.LastName AS "Full Name",
	c.Country
FROM Customer c
WHERE c.Country = "Brazil"