USE [Skill_AssessmentDB]
GO

/****** Object:  Table [dbo].[Users]    Script Date: 1/15/2017 5:41:23 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO
drop table [dbo].[Users] 


CREATE TABLE [dbo].[Users](
	[CreateDate] [date] NULL,
	[CreateID] [int] NULL,
	[UserID] [int] IDENTITY(0,1) NOT NULL,
	[U_name] [varchar](100) NOT NULL UNIQUE ,
	[U_password] [varchar](50) NOT NULL,
	[U_admin] [bit] NOT NULL,
	[U_details] [varchar](200) NULL,
	[EditDate] [date] NULL,
	[EditID] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Users] UNIQUE NONCLUSTERED 
(
	[U_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [Skill_AssessmentDB]
GO

INSERT INTO [dbo].[Users]
           ([CreateDate]
           ,[CreateID]
           ,[U_name]
           ,[U_password]
           ,[U_admin]
           ,[U_details]
           ,[EditDate]
           ,[EditID])
     VALUES
           ('2017-01-15'
           ,'0'
           ,'admin'
           ,'admin'
           ,1
           ,null
           ,null
           ,null)

ALTER TABLE [dbo].[Users]  ALTER COLUMN [CreateDate] [date]  NOT NULL

ALTER TABLE [dbo].[Users]  ALTER COLUMN [CreateID] [int] NOT NULL


INSERT INTO [dbo].[Users]
           ([CreateDate]
           ,[CreateID]
           ,[U_name]
           ,[U_password]
           ,[U_admin]
           ,[U_details]
           ,[EditDate]
           ,[EditID])
     VALUES
           ('2017-01-15'
           ,'0'
           ,'admin'
           ,'admin'
           ,1
           ,null
           ,null
           ,null)
GO


USE [Skill_AssessmentDB]
GO
/****** Object:  StoredProcedure [dbo].[LoginUser]    Script Date: 1/15/2017 5:49:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[LoginUser]
	(@U_name varchar(100),@U_password varchar(100))
	AS BEGIN
SELECT *
  FROM [dbo].[Users]
    WHERE [U_name]=@U_name AND [U_password]=@U_password 
 end



