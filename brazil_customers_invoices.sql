/*Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.*/

SELECT
	i.InvoiceId,
	i.InvoiceDate,
	c.CustomerId,
	c.FirstName,
	c.LastName,
	c.Country
FROM Invoice i
LEFT JOIN Customer c ON i.CustomerId = c.CustomerId
WHERE c.Country = "Brazil"