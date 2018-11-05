/*Provide a query showing only the Employees who are Sales Agents.*/

SELECT 
	e.EmployeeId,
	e.FirstName ||' ' || e.LastName AS "Full Name",
	e.Title,
	e.ReportsTo,
	e.BirthDate,
	e.HireDate,
	e.Address,
	e.City,
	e.[State],
	e.Country,
	e.PostalCode,
	e.Phone,
	e.Fax,
	e.Email
FROM Employee e
WHERE e.Title = "Sales Support Agent"