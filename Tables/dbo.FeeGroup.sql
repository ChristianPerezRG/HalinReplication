CREATE TABLE [dbo].[FeeGroup]
(
[FeeGroupKey] [smallint] NOT NULL,
[CreateDate] [datetime] NOT NULL,
[ChangeDate] [datetime] NOT NULL,
[ChangeBy] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FeeGroup] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RowRevision] [timestamp] NOT NULL,
[FeeGroupCode] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FeeGroup] ADD CONSTRAINT [PK_FeeGroup_FeeGroupKey] PRIMARY KEY CLUSTERED ([FeeGroupKey]) ON [PRIMARY]
GO
