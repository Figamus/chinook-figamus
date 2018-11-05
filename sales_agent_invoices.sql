/*Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.*/

SELECT
	i.InvoiceId,
	i.CustomerId,
	i.InvoiceDate,
	i.BillingAddress,
	i.BillingCity,
	i.BillingCountry,
	i.BillingPostalCode,
	i.[Total],
	e.FirstName || ' ' ||  e.LastName  AS "Sales Agent"
FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId
JOIN Employee e ON c.SupportRepId = e.EmployeeId