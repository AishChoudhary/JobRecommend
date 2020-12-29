USE [JobRecommenderDb]
GO

/****** Object:  Table [dbo].[NewRequirement]    Script Date: 29-12-2020 17:14:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[NewRequirement](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[rid] [int] NULL,
	[Jobtitle] [nvarchar](50) NULL,
	[JobDescription] [nvarchar](1000) NULL,
	[WorkExperiance] [nvarchar](50) NULL,
	[JobLocation] [nchar](50) NULL,
	[Rank] [int] NULL,
	[Roles] [nvarchar](1000) NULL,
	[MinQual] [nvarchar](50) NULL,
	[Salary] [numeric](18, 2) NULL,
	[OpeningDate] [varchar](10) NULL,
	[ClosingDate] [varchar](10) NULL,
	[criteria] [int] NULL,
 CONSTRAINT [PK_NewRequirement] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[NewRequirement]  WITH CHECK ADD  CONSTRAINT [FK_NewRequirement_Recruiter] FOREIGN KEY([rid])
REFERENCES [dbo].[Recruiter] ([id])
GO

ALTER TABLE [dbo].[NewRequirement] CHECK CONSTRAINT [FK_NewRequirement_Recruiter]
GO


