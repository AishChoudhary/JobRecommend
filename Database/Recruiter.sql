USE [JobRecommenderDb]
GO

/****** Object:  Table [dbo].[Recruiter]    Script Date: 30-08-2020 17:46:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Recruiter](
	[id] [int] IDENTITY(1,1) NOT NULL,
    [FullName] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](10) NULL,
    [ConfirmPassword] [nvarchar](10) NULL,
	[MobileNo] [nvarchar](10) NULL,
	
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


