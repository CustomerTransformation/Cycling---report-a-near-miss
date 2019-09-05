USE [ProdReportIT]
GO

/****** Object:  Table [dbo].[Cycling]    Script Date: 05/09/2019 14:26:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Cycling](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ContactDetails] [varchar](500) NULL,
	[Postcode] [varchar](10) NULL,
	[DateIncident] [date] NOT NULL,
	[TimeIncident] [time](7) NOT NULL,
	[Daylight] [varchar](10) NOT NULL,
	[LocationLat] [varchar](max) NOT NULL,
	[LocationLng] [varchar](max) NOT NULL,
	[LocationDescription] [varchar](50) NOT NULL,
	[DescriptionIncident] [varchar](30) NOT NULL,
	[OtherDescription] [varchar](300) NULL,
	[Age] [varchar](20) NULL,
	[Gender] [varchar](6) NULL,
	[WhereFrom] [text] NULL,
	[WhereTo] [text] NULL,
	[TravelPurpose] [varchar](10) NULL,
	[PostcodeMap] [varchar](15) NULL,
	[DayWeek] [varchar](20) NOT NULL,
	[DeliberateOrNot] [varchar](20) NULL,
	[HowAnnoying] [int] NULL,
	[HowScary] [int] NULL,
	[TypeOfMiss] [varchar](60) NULL,
	[SpecifyOther] [varchar](max) NULL,
	[ReportingDate] [date] NULL,
	[Name] [varchar](60) NULL,
	[EmailAddress] [varchar](100) NULL,
	[Telephone] [varchar](100) NULL,
	[Mobile] [varchar](20) NULL,
	[EASTING] [varchar](max) NULL,
	[NORTHING] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

