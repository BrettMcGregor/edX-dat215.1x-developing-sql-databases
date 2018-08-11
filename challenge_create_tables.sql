CREATE TABLE Competitor
(
CompetitorCode NVARCHAR(6),
Name VARCHAR(30),
Address VARCHAR(MAX),
Date_Entered VARCHAR(10),
Strength_of_competition VARCHAR(8),
Comments VARCHAR(MAX)
);
GO

SELECT * FROM Competitor;

CREATE TABLE TVAdvertisement
(
TV_Station NVARCHAR(15),
City NVARCHAR(25),
CostPerAdvertisement FLOAT,
TotalCostOfAllAdvertisements FLOAT,
NumberOfAdvertisements VARCHAR(4),
Date_Of_Advertisement_1 VARCHAR(12),
Time_Of_Advertisement_1 INT,
Date_Of_Advertisement_2 VARCHAR(12),
Time_Of_Advertisement_2 INT,
Date_Of_Advertisement_3 VARCHAR(12),
Time_Of_Advertisement_3 INT,
Date_Of_Advertisement_4 VARCHAR(12),
Time_Of_Advertisement_4 INT,
Date_Of_Advertisement_5 VARCHAR(12),
Time_Of_Advertisement_5 INT
);
GO

SELECT * FROM TVAdvertisement;

CREATE TABLE CampaignResponse
(
ResponseOccuredWhen DATETIME,
RelevantProspect INT,
RespondedHow VARCHAR(8), 
CHECK (RespondedHow IN ('phone', 'email', 'fax', 'letter')),
ChargeFromReferrer FLOAT,
RevenueFromResponse FLOAT,
ResponseProfit as (RevenueFromResponse - ChargeFromReferrer)
);
GO

SELECT * FROM CampaignResponse;
