USE [ProdReportIT]
GO

DECLARE @RC int
DECLARE @Name varchar(60)
DECLARE @EmailAddress varchar(100)
DECLARE @Telephone varchar(100)
DECLARE @Mobile varchar(20)
DECLARE @Postcode varchar(10)
DECLARE @DateIncident date
DECLARE @TimeIncident time(7)
DECLARE @Daylight varchar(10)
DECLARE @LocationLat varchar(max)
DECLARE @LocationLng varchar(max)
DECLARE @LocationDescription varchar(20)
DECLARE @DescriptionIncident varchar(30)
DECLARE @OtherDescription varchar(300)
DECLARE @Age varchar(5)
DECLARE @Gender varchar(6)
DECLARE @WhereFrom text
DECLARE @WhereTo text
DECLARE @TravelPurpose varchar(10)
DECLARE @PostcodeMap varchar(15)
DECLARE @DeliberateOrNot varchar(20)
DECLARE @HowAnnoying int
DECLARE @HowScary int
DECLARE @TypeOfMiss varchar(60)
DECLARE @SpecifyOther varchar(max)
DECLARE @ReportingDate date
DECLARE @Easting varchar(max)
DECLARE @Northing varchar(max)

-- TODO: Set parameter values here.

EXECUTE @RC = [dbo].[storeCycle] 
   @Name
  ,@EmailAddress
  ,@Telephone
  ,@Mobile
  ,@Postcode
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
  ,@DeliberateOrNot
  ,@HowAnnoying
  ,@HowScary
  ,@TypeOfMiss
  ,@SpecifyOther
  ,@ReportingDate
  ,@Easting
  ,@Northing
GO

