/*Provide a query that includes the purchased track name AND artist name with each invoice line item.*/

SELECT 
	il.InvoiceLineID,
	il.InvoiceId,
	il.UnitPrice,
	il.Quantity,
	t.Name,
	a.Name
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
JOIN Album al ON t.AlbumId = al.AlbumId
JOIN Artist a ON al.ArtistId = a.ArtistId
;