USE [ProdReportIT]
GO

/****** Object:  View [dbo].[CyclingView]    Script Date: 05/09/2019 14:26:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO










CREATE VIEW [dbo].[CyclingView]
AS
SELECT 
 Replace(CONVERT(VARCHAR(20), ReportingDate, 103),'-','/')AS ReportingDate,
 Name,
 EmailAddress,
 Telephone,
 Mobile,
 UPPER(REPLACE(Postcode, ' ' ,''))AS CustomerPostcode,
 Replace(CONVERT(VARCHAR(20), DateIncident, 103),'-','/')AS DateIncident,
 CONVERT(varchar (20),TimeIncident, 108)AS TimeIncident, 
 Daylight,
 LocationLat AS LocationLat,
 LocationLng AS LocationLng,
 EASTING AS EASTING,
 NORTHING AS NORTHING,
 REPLACE(PostcodeMap, ' ' ,'') AS PostcodeMap,
 LocationDescription,
 DescriptionIncident,
 OtherDescription,
 TypeOfMiss,
 SpecifyOther,
 Age,
 Gender,
 WhereFrom,
 WhereTo,
 TravelPurpose,
 DayWeek,
 DeliberateOrNot,
 HowAnnoying,
 HowScary
 FROM Cycling
 where DateIncident >= '2018-03-21'











GO

