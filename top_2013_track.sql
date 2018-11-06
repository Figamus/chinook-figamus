/*Provide a query that shows the most purchased track of 2013.*/

SELECT t.Name, SUM(il.Quantity) AS PurchaseCount
FROM Track t
JOIN InvoiceLine il ON t.TrackId = il.TrackId
JOIN Invoice i ON i.InvoiceId = il.InvoiceId
WHERE i.InvoiceDate BETWEEN '2013-01-01T00:00:00' AND '2013-12-31T23:59:59'
GROUP BY t.Name
ORDER BY PurchaseCount DESC
;

SELECT
	SUM(il.Quantity) AS PurchaseCount,
	t.Name
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
JOIN Invoice i ON i.InvoiceId = il.InvoiceId
WHERE i.InvoiceDate BETWEEN '2013-01-01T00:00:00' AND '2013-12-31T23:59:59'
GROUP BY il.TrackId
ORDER BY PurchaseCount DESC
;