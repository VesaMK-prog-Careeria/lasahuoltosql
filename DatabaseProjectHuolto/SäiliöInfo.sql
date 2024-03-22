CREATE TABLE [dbo].[SäiliöInfo] (
    [SäiliöInfoID] INT            IDENTITY (1, 1) NOT NULL PRIMARY KEY CLUSTERED ([SäiliöInfoID] ASC),
    [SäiliöID]     INT            NOT NULL,
    [InfoTXT]      NVARCHAR (MAX) NULL,
    [Kuva]         IMAGE          NULL,
    CONSTRAINT [FK_SäiliöInfo_SäiliöInfo] FOREIGN KEY ([SäiliöInfoID]) REFERENCES [dbo].[SäiliöInfo] ([SäiliöInfoID])
);
