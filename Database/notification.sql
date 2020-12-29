USE [JobRecommenderDb]
GO

/****** Object:  Table [dbo].[notification]    Script Date: 29-12-2020 17:14:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[notification](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[rid] [int] NULL,
	[uid] [int] NULL,
	[not_text] [nvarchar](250) NULL,
	[not_date] [date] NULL,
	[status] [varchar](50) NULL,
	[not_flag] [int] NULL,
	[user_flag] [int] NULL,
 CONSTRAINT [PK_notification] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


