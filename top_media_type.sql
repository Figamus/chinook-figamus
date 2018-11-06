/*Provide a query that shows the most purchased Media Type.*/

SELECT
	MediaTypePurchases.Name,
	MAX(MediaTypePurchases.TotalSale)
FROM (SELECT
	mt.Name,
	SUM(il.Quantity) AS TotalSale
FROM MediaType mt
JOIN Track T ON mt.MediaTypeId = T.MediaTypeId
JOIN InvoiceLine il ON il.TrackId = t.TrackId
GROUP BY mt.Name
ORDER BY TotalSale DESC) MediaTypePurchases
;