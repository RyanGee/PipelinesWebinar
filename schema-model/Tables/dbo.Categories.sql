CREATE TABLE [dbo].[Categories]
(
[CategoryID] [int] NOT NULL IDENTITY(1, 1),
[CategoryName] [nvarchar] (15) NOT NULL,
[Description] [ntext] NULL,
[Picture] [image] NULL,
[ProductCode] [int] NULL,
[Testing] [nchar] (10) NULL,
[Hux] [nchar] (10) NULL
)
GO
ALTER TABLE [dbo].[Categories] ADD CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED ([CategoryID])
GO
CREATE NONCLUSTERED INDEX [CategoryName] ON [dbo].[Categories] ([CategoryName])
GO
