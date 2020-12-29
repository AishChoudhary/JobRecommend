USE [JobRecommenderDb]
GO

/****** Object:  Table [dbo].[UserProfile]    Script Date: 29-12-2020 17:16:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[UserProfile](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uid] [int] NOT NULL,
	[Address] [nvarchar](300) NOT NULL,
	[Marks10] [float] NOT NULL,
	[Marks12] [float] NOT NULL,
	[CurrentQual] [nvarchar](50) NOT NULL,
	[HighestQual] [nvarchar](50) NOT NULL,
	[DesiredLoc] [nvarchar](50) NOT NULL,
	[Certifications] [nvarchar](max) NULL,
	[Interests] [nvarchar](50) NOT NULL,
	[WorkDuration] [nvarchar](50) NULL,
	[JobTitle] [nvarchar](50) NULL,
	[CompanyName] [nvarchar](50) NULL,
	[Salary] [numeric](18, 2) NULL,
	[ResumePath] [nvarchar](300) NULL,
	[SiteScore] [int] NULL CONSTRAINT [DF_UserProfile_SiteScore]  DEFAULT ((0)),
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


