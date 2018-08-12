CREATE TABLE [DirectMarketing].[Prospect](
	[ProspectID] [int] NOT NULL,
	[FirstName] [nvarchar](20) NOT NULL,
	[LatName] [nvarchar](100) NOT NULL,
	[CompanyID] [int] NOT NULL
	);
GO

TRUNCATE TABLE [DirectMarketing].[Opportunity];

INSERT INTO [DirectMarketing].[Opportunity]
           ([OpportunityID]
           ,[ProspectID]
           ,[Likelihood]
           ,[Rating]
           ,[EstimatedClosingDate]
           ,[EstimatedRevenue])
     VALUES
           (1,5,8,'A','12/12/2020',123000.00)
GO

SELECT * FROM [DirectMarketing].[Opportunity];

INSERT INTO [DirectMarketing].[Opportunity]
           ([OpportunityID]
           ,[ProspectID]
           ,[Likelihood]
           ,[Rating]
           ,[EstimatedClosingDate]
           ,[EstimatedRevenue])
     VALUES
           (1,2,8,'A','12/12/2020',123000.00)
GO

SELECT * FROM [DirectMarketing].[Opportunity];