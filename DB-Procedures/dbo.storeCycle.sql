USE [ProdReportIT]
GO

/****** Object:  StoredProcedure [dbo].[storeCycle]    Script Date: 30/09/2019 10:13:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Daniela Dutu
-- Create date: 09/10/2017
-- Description:	Enter values into the Cycling table from the form
-- =============================================
CREATE PROCEDURE [dbo].[storeCycle]
	-- Add the parameters for the stored procedure here
	
           @Postcode varchar(10)
           ,@DateIncident date
           ,@TimeIncident time(7)
           ,@Daylight varchar(10)
           ,@LocationLat varchar(max)
           ,@LocationLng varchar(max)
           ,@LocationDescription varchar(20)
           ,@DescriptionIncident varchar(30)
           ,@OtherDescription varchar(300)
           ,@Age varchar(5)
           ,@Gender varchar(6)
           ,@WhereFrom text
           ,@WhereTo text
           ,@TravelPurpose varchar(10)
           ,@PostcodeMap varchar(15)
           ,@DeliberateOrNot varchar(20)
           ,@HowAnnoying int
           ,@HowScary int
           ,@TypeOfMiss varchar (60)
           ,@SpecifyOther varchar(max)
           ,@ReportingDate date
		   ,@Easting varchar(max)
		   ,@Northing varchar(max)
        
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    
INSERT INTO [ProdReportIT].[dbo].[Cycling]

          ([Postcode]
           ,[DateIncident]
           ,[TimeIncident]
           ,[Daylight]
           ,[LocationLat]
           ,[LocationLng]
           ,[LocationDescription]
           ,[DescriptionIncident]
           ,[OtherDescription]
           ,[Age]
           ,[Gender]
           ,[WhereFrom]
           ,[WhereTo]
           ,[TravelPurpose]
           ,[PostcodeMap]
           ,[DayWeek]
           ,[DeliberateOrNot]
           ,[HowAnnoying]
           ,[HowScary]
           ,[TypeOfMiss]
           ,[SpecifyOther]
           ,[ReportingDate]
		   ,[EASTING]
		   ,[NORTHING])
     VALUES
           (
           @Postcode
           ,@DateIncident
           ,@TimeIncident
           ,@Daylight
           ,@LocationLat
           ,@LocationLng
           ,@LocationDescription
           ,@DescriptionIncident
           ,@OtherDescription
           ,@Age
           ,@Gender
           ,@WhereFrom
           ,@WhereTo
           ,@TravelPurpose
           ,@PostcodeMap
           ,DATENAME (WEEKDAY, @DateIncident) 
           ,@DeliberateOrNot
           ,@HowAnnoying
           ,@HowScary
           ,@TypeOfMiss
           ,@SpecifyOther
           ,@ReportingDate
		   ,@Easting
		   ,@Northing)
END
GO

