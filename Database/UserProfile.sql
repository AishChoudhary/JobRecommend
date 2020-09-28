USE [JobRecommenderDb]
GO

/****** Object:  Table [dbo].[UserProfile]    Script Date: 27-09-2020 20:13:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[UserProfile](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Marks10] [float] NOT NULL,
	[Marks12] [float] NOT NULL,
	[CurrentQual] [nchar](10) NOT NULL,
	[HighestQual] [nchar](10) NOT NULL,
	[DesiredLoc] [nchar](20) NOT NULL,
	[Certifications] [nvarchar](max) NULL,
	[Interests] [nchar](10) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


