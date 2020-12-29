USE [JobRecommenderDb]
GO

/****** Object:  Table [dbo].[TestInfo]    Script Date: 29-12-2020 17:51:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TestInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[question] [nvarchar](1000) NOT NULL,
	[questiontype] [nvarchar](50) NOT NULL,
	[option1] [nvarchar](500) NULL,
	[option2] [nvarchar](500) NULL,
	[option3] [nvarchar](500) NULL,
	[option4] [nvarchar](500) NULL,
	[answer] [int] NOT NULL,
	[key_skill_id] [int] NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[TestInfo]  WITH CHECK ADD  CONSTRAINT [FK_TestInfo_KeySkills] FOREIGN KEY([key_skill_id])
REFERENCES [dbo].[KeySkills] ([id])
GO

ALTER TABLE [dbo].[TestInfo] CHECK CONSTRAINT [FK_TestInfo_KeySkills]
GO


