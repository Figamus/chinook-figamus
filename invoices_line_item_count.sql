/*Provide a query that shows all Invoices but includes the # of invoice line items.*/

SELECT
	i.InvoiceId,
	COUNT(il.TrackId) AS "Total Items"
FROM InvoiceLine il
JOIN Invoice i ON il.InvoiceId = i.InvoiceId
GROUP BY il.InvoiceId