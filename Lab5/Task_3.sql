use labKN
go


declare @deletetable as table(CustomerID int)

alter table [customer].[CustomerGeneral] nocheck constraint all
alter table [customer].[CustomerDetails] nocheck constraint all
alter table [customer].[CustomerPermission] nocheck constraint all
alter table [customer].[CustomersAddresses] nocheck constraint all
alter table [customer].[CustomersCreditCards] nocheck constraint all
alter table [order].[OrderHeaders] nocheck constraint all

delete gen  
output deleted.Id into @deletetable
from [customer].[CustomerGeneral] gen
left join [customer].[CustomerDetails] as det
on gen.Id  =  det.CustomerId
where det.CustomerId is null
select * from @deletetable

alter table [customer].[CustomerGeneral] check constraint all
alter table [customer].[CustomerDetails] check constraint all
alter table [customer].[CustomerPermission] check constraint all
alter table [customer].[CustomersAddresses] check constraint all
alter table [customer].[CustomersCreditCards] check constraint all
alter table [order].[OrderHeaders] check constraint all

delete from [customer].[CustomerDetails] where [CustomerId]= 5

