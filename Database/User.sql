USE [JobRecommenderDb]
GO

/****** Object:  Table [dbo].[User]    Script Date: 31-08-2020 16:55:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[User](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](10) NULL,
	[MobileNo] [nvarchar](10) NULL,
	[city] [nvarchar](50) NULL
) ON [PRIMARY]

GO


