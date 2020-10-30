USE [JobRecommenderDb]
GO

/****** Object:  Table [dbo].[ApplyJob]    Script Date: 30-10-2020 23:01:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ApplyJob](
	[uid] [int] NOT NULL,
	[pid] [int] NOT NULL,
	[appliedDate] [datetime] NULL CONSTRAINT [DF_ApplyJob_appliedDate]  DEFAULT (getdate())
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[ApplyJob]  WITH CHECK ADD  CONSTRAINT [FK_ApplyJob_NewRequirement] FOREIGN KEY([pid])
REFERENCES [dbo].[NewRequirement] ([id])
GO

ALTER TABLE [dbo].[ApplyJob] CHECK CONSTRAINT [FK_ApplyJob_NewRequirement]
GO

ALTER TABLE [dbo].[ApplyJob]  WITH CHECK ADD  CONSTRAINT [FK_ApplyJob_UserInfo] FOREIGN KEY([uid])
REFERENCES [dbo].[UserInfo] ([id])
GO

ALTER TABLE [dbo].[ApplyJob] CHECK CONSTRAINT [FK_ApplyJob_UserInfo]
GO


