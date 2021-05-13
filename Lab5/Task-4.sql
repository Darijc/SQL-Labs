USE labKN
GO

CREATE TABLE #updatetable (ProductName nvarchar(255))

UPDATE [order].[OrderLineHeaders]
       SET ProductName = pro.[ProductName]
	   OUTPUT deleted.ProductName INTO #updatetable
       FROM [order].[OrderLineHeaders] AS head
	   INNER JOIN [product].[Products] AS pro
	   ON head.ProductId = pro.ProductId
	   WHERE head.ProductName <> pro.ProductName

SELECT * FROM #updatetable
