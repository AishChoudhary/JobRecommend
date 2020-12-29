USE [JobRecommenderDb]
GO

/****** Object:  Table [dbo].[TestResultInfo]    Script Date: 29-12-2020 17:16:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TestResultInfo](
	[uid] [int] NULL,
	[questiontype] [nvarchar](50) NULL,
	[correctans] [int] NULL,
	[key_skill_id] [int] NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[TestResultInfo]  WITH CHECK ADD  CONSTRAINT [FK_TestResultInfo_KeySkills] FOREIGN KEY([key_skill_id])
REFERENCES [dbo].[KeySkills] ([id])
GO

ALTER TABLE [dbo].[TestResultInfo] CHECK CONSTRAINT [FK_TestResultInfo_KeySkills]
GO


