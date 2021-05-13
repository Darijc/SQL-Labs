USE labKN
GO

DECLARE @num int
set @num = 169


SELECT [customer].[CustomerGeneral].Id
      ,[customer].[CustomerDetails].[CreateDateTime]
      ,[customer].[CustomerDetails].[LastLoginDate]
      ,[customer].[CustomerDetails].[LockReasonCode]
      ,[customer].[CustomerDetails].[Notes]
      ,[customer].[CustomerDetails].[customerTypeId]
      ,[customer].[CustomerDetails].[PaymentMethodId]
      ,[customer].[CustomerDetails].[OrderTotal]
      ,[customer].[CustomerDetails].[IsVIPCustomer]
      ,[customer].[CustomerDetails].[LastModifiedDate]
      ,[customer].[CustomerGeneral].[Email]
      ,[customer].[CustomerGeneral].[LoginName]
      ,[customer].[CustomerGeneral].[Password]
      
FROM [customer].[CustomerDetails]  LEFT JOIN [customer].[CustomerGeneral] 
ON [customer].[CustomerDetails].[CustomerId]=[customer].[CustomerGeneral].[Id]
LEFT JOIN [customer].[CustomerPermission]
ON  [customer].[CustomerGeneral].[Id]=[customer].[CustomerPermission].CustomerId
LEFT JOIN [customer].[CustomersAddresses]
ON  [customer].[CustomerGeneral].[Id]=[customer].[CustomersAddresses].CustomerId
LEFT JOIN [customer].[CustomersCreditCards]
ON  [customer].[CustomerGeneral].[Id]=[customer].[CustomersCreditCards].CustomerId
WHERE [customer].[CustomerDetails].[CustomerId] = @num
