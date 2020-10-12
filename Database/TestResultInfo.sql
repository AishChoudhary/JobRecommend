USE [JobRecommenderDb]
GO

/****** Object:  Table [dbo].[TestResultInfo]    Script Date: 12-10-2020 15:06:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TestResultInfo](
	[uid] [int] NULL,
	[questiontype] [nvarchar](50) NULL,
	[correctans] [int] NULL
) ON [PRIMARY]

GO


