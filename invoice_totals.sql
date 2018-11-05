/*Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.*/

SELECT
	i.[Total],
	c.FirstName || ' ' ||  c.LastName  AS "Customer",
	i.BillingCountry,
	e.FirstName || ' ' ||  e.LastName  AS "Sales Agent"
FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId
JOIN Employee e ON c.SupportRepId = e.EmployeeId