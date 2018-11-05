/*How many Invoices were there in 2009 and 2011?*/

/*SELECT COUNT(i.InvoiceId) AS "Total from 2009 and 2011"*/
SELECT *
FROM Invoice i
WHERE i.InvoiceDate LIKE "2011%"
OR i.InvoiceDate LIKE "2009%"