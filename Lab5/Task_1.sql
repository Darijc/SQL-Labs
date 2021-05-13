USE labKN
GO

DELETE TOP(100) FROM [customer].[CustomersCreditCards]

USE labKN
GO

SELECT  TOP 50 [order].[OrderLineHeaders].[Id]
      ,[order].[OrderLineHeaders].[OrderNumber]
      ,[order].[OrderLineHeaders].[LineNumber]
      ,[order].[OrderLineHeaders].[ProductId]
      ,[order].[OrderLineHeaders].[ProductName]
      ,[order].[OrderLineHeaders].[Quantity]
      ,[order].[OrderLineHeaders].[Amount]
      ,[order].[OrderLineHeaders].[DiscountAmount]
      ,[order].[OrderLineHeaders].[Description]
      ,[order].[OrderLineHeaders].[Type]
      ,[order].[OrderLineHeaders].[IsGift]
      ,[order].[OrderLineHeaders].[HideForCustomer]
	  ,[order].[OrderHeaders].[DeliveryDate]
    
FROM [order].[OrderLineHeaders] INNER JOIN [order].[OrderHeaders]
ON [order].[OrderHeaders].OrderNumber = [order].[OrderLineHeaders].OrderNumber
ORDER BY  DeliveryDate DESC 
