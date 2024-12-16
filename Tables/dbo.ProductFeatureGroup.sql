CREATE TABLE [dbo].[ProductFeatureGroup]
(
[ProductFeatureGroupKey] [int] NOT NULL,
[CreateDate] [datetime] NOT NULL,
[ChangeDate] [datetime] NOT NULL,
[ChangeBy] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProductKey] [int] NULL,
[FeatureGroupKey] [smallint] NULL,
[IsStandard] [bit] NOT NULL,
[FeeGroupKey] [smallint] NULL,
[LimitGroupKey] [smallint] NULL,
[ProductTierKey] [int] NULL,
[RowRevision] [timestamp] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProductFeatureGroup] ADD CONSTRAINT [PK_ProductFeatureGroup_ProductFeatureGroupKey] PRIMARY KEY CLUSTERED ([ProductFeatureGroupKey]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProductFeatureGroup] ADD CONSTRAINT [FK_ProductFeatureGroup_FeeGroupKey] FOREIGN KEY ([FeeGroupKey]) REFERENCES [dbo].[FeeGroup] ([FeeGroupKey])
GO
