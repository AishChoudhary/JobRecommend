USE [JobRecommenderDb]
GO

/****** Object:  Table [dbo].[KeySkillInfo]    Script Date: 29-12-2020 17:12:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[KeySkillInfo](
	[uid] [int] NOT NULL,
	[key_skill_id] [int] NOT NULL,
	[status] [varchar](50) NULL,
	[marks] [int] NULL,
	[attempts] [int] NULL CONSTRAINT [DF_KeySkillInfo_attempts]  DEFAULT ((0))
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


