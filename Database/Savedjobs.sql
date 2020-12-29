USE [JobRecommenderDb]
GO

/****** Object:  Table [dbo].[Savedjobs]    Script Date: 29-12-2020 17:15:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Savedjobs](
	[uid] [int] NULL,
	[jobid] [int] NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Savedjobs]  WITH CHECK ADD  CONSTRAINT [FK_Savedjobs_NewRequirement] FOREIGN KEY([jobid])
REFERENCES [dbo].[NewRequirement] ([id])
GO

ALTER TABLE [dbo].[Savedjobs] CHECK CONSTRAINT [FK_Savedjobs_NewRequirement]
GO


