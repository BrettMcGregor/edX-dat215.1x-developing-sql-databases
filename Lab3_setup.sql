DROP TABLE DirectMarketing.Opportunity

/****** Object:  Schema [DirectMarketing]    Script Date: 12-Aug-18 8:52:32 AM ******/
DROP SCHEMA [DirectMarketing]
GO

/****** Object:  Schema [DirectMarketing]    Script Date: 12-Aug-18 8:52:32 AM ******/
CREATE SCHEMA DirectMarketing;
GO
CREATE TABLE [DirectMarketing].[Opportunity](
	[OpportunityID] [int] NULL,
	[ProspectID] [int] NOT NULL,
	[DateRaised] [datetime] NULL,
	[Likelihood] [tinyint] NULL,
	[Rating] [char](1) NULL,
	[EstimatedClosingDate] [date] NULL,
	[EstimatedRevenue] [decimal](10, 2) NULL
	);
GO