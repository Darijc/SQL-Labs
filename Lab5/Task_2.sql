USE labKN
GO
 
SELECT  [customer].[CustomerDetails].[CustomerId] 
FROM [customer].[CustomerDetails] 
FULL JOIN [customer].[CustomersCreditCards]
ON [customer].[CustomersCreditCards].[CustomerId]  = [customer].[CustomerDetails].[CustomerId] 
WHERE [customer].[CustomersCreditCards].[CustomerId]  IS NULL OR [customer].[CustomerDetails].[CustomerId]  IS NULL

