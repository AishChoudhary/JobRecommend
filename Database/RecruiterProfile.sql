USE [JobRecommenderDb]
GO

/****** Object:  Table [dbo].[RecruiterProfile]    Script Date: 29-09-2020 21:44:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[RecruiterProfile](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uid] [int] NOT NULL,
	[CompanyName] [nchar](30) NOT NULL,
	[WorkingAs] [nchar](30) NOT NULL,
	[CompLocation] [nchar](30) NOT NULL,
 CONSTRAINT [PK_RecruiterProfile] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RecruiterProfile]  WITH CHECK ADD  CONSTRAINT [FK_RecruiterProfile_RecruiterProfile] FOREIGN KEY([uid])
REFERENCES [dbo].[Recruiter] ([id])
GO

ALTER TABLE [dbo].[RecruiterProfile] CHECK CONSTRAINT [FK_RecruiterProfile_RecruiterProfile]
GO


