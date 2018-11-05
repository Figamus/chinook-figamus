/*Which sales agent made the most in sales in 2009?*/

SELECT
max(AllProfits.Profit),
AllProfits.FullName
From	(SELECT
			e.FirstName || ' ' || e.LastName AS FullName,
			sum(i.Total) Profit
		FROM Employee e
		JOIN Customer c ON e.EmployeeId = c.SupportRepId
		JOIN Invoice i ON  i.CustomerId = c.CustomerId
		Where i.InvoiceDate like "%2009%"
		Group BY FullName
		Order by Profit Desc) AllProfits
;