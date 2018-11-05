/*Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice.*/

SELECT
	il.InvoiceId,
	COUNT (il.InvoiceLineID)
FROM InvoiceLine il
GROUP BY InvoiceId
;