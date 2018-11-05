/*Provide a query that includes the purchased track name with each invoice line item.*/

SELECT 
	il.InvoiceLineID,
	il.InvoiceId,
	t.Name AS TrackName,
	il.UnitPrice,
	il.Quantity
FROM InvoiceLine il
JOIN Track t WHERE il.TrackId = t.TrackId