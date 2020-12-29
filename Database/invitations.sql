USE [JobRecommenderDb]
GO

/****** Object:  Table [dbo].[invitations]    Script Date: 29-12-2020 17:11:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[invitations](
	[inv_id] [int] IDENTITY(1,1) NOT NULL,
	[uid] [int] NULL,
	[rid] [int] NULL,
	[message] [varchar](50) NULL,
	[status] [varchar](50) NULL CONSTRAINT [DF_invitations_status]  DEFAULT ('pending'),
 CONSTRAINT [PK_invitations] PRIMARY KEY CLUSTERED 
(
	[inv_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[invitations]  WITH CHECK ADD  CONSTRAINT [FK_invitations_Recruiter] FOREIGN KEY([rid])
REFERENCES [dbo].[Recruiter] ([id])
GO

ALTER TABLE [dbo].[invitations] CHECK CONSTRAINT [FK_invitations_Recruiter]
GO

ALTER TABLE [dbo].[invitations]  WITH CHECK ADD  CONSTRAINT [FK_invitations_UserInfo] FOREIGN KEY([uid])
REFERENCES [dbo].[UserInfo] ([id])
GO

ALTER TABLE [dbo].[invitations] CHECK CONSTRAINT [FK_invitations_UserInfo]
GO


