/*Provide a query that shows the # of invoices per country.*/

SELECT
	i.BillingCountry,
	COUNT(i.InvoiceId) AS "# Of Invoices"
FROM Invoice i
GROUP BY i.BillingCountry