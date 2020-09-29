USE [JobRecommenderDb]
GO

/****** Object:  Table [dbo].[UserProfile]    Script Date: 28-09-2020 17:41:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[UserProfile](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uid] [int] NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Marks10] [float] NOT NULL,
	[Marks12] [float] NOT NULL,
	[CurrentQual] [nchar](10) NOT NULL,
	[HighestQual] [nchar](10) NOT NULL,
	[DesiredLoc] [nchar](20) NOT NULL,
	[Certifications] [nvarchar](max) NULL,
	[Interests] [nchar](10) NOT NULL,
	[WorkDuration] [nvarchar](50) NOT NULL,
	[JobTitle] [nchar](20) NOT NULL,
	[CompanyName] [nchar](50) NOT NULL,
	[Salary] [numeric](18, 2) NOT NULL,
 CONSTRAINT [PK_UserProfile] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[UserProfile]  WITH CHECK ADD  CONSTRAINT [FK_UserProfile_UserProfile] FOREIGN KEY([uid])
REFERENCES [dbo].[UserInfo] ([id])
GO

ALTER TABLE [dbo].[UserProfile] CHECK CONSTRAINT [FK_UserProfile_UserProfile]
GO


