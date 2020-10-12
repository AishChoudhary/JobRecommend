USE [JobRecommenderDb]
GO

/****** Object:  Table [dbo].[TestInfo]    Script Date: 12-10-2020 15:05:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TestInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[question] [nvarchar](500) NOT NULL,
	[questiontype] [nvarchar](50) NOT NULL,
	[option1] [nvarchar](500) NULL,
	[option2] [nvarchar](500) NULL,
	[option3] [nvarchar](500) NULL,
	[option4] [nvarchar](500) NULL,
	[answer] [int] NOT NULL
) ON [PRIMARY]

GO


