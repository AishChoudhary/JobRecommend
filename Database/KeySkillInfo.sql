USE [JobRecommenderDb]
GO

/****** Object:  Table [dbo].[KeySkillInfo]    Script Date: 13-10-2020 18:14:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[KeySkillInfo](
	[uid] [int] NOT NULL,
	[key_skill_id] [int] NOT NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[KeySkillInfo]  WITH CHECK ADD  CONSTRAINT [FK_KeySkillInfo_KeySkills] FOREIGN KEY([key_skill_id])
REFERENCES [dbo].[KeySkills] ([id])
GO

ALTER TABLE [dbo].[KeySkillInfo] CHECK CONSTRAINT [FK_KeySkillInfo_KeySkills]
GO

ALTER TABLE [dbo].[KeySkillInfo]  WITH CHECK ADD  CONSTRAINT [FK_KeySkillInfo_UserInfo] FOREIGN KEY([uid])
REFERENCES [dbo].[UserInfo] ([id])
GO

ALTER TABLE [dbo].[KeySkillInfo] CHECK CONSTRAINT [FK_KeySkillInfo_UserInfo]
GO


