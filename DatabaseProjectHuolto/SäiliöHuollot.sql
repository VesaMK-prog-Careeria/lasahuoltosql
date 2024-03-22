CREATE TABLE [dbo].[SäiliöHuollot] (
    [HuollonID]         INT           NOT NULL PRIMARY KEY,
    [SäiliöID]          INT           NULL,
    [HuoltoPVM]         DATE          NULL,
    [HuoltoPaikkaID]    INT           NULL,
    [HuollonKuvaus]     NVARCHAR(255) NULL,
    [Image]             VARBINARY(MAX) NULL,
    CONSTRAINT [FK_SäiliöHuollot_Säiliö] FOREIGN KEY ([SäiliöID]) REFERENCES [dbo].[Säiliö] ([SäiliöID]),
    CONSTRAINT [FK_SäiliöHuollot_HuoltoPaikka] FOREIGN KEY ([HuoltoPaikkaID]) REFERENCES [dbo].[Huoltopaikat] ([HuoltoPaikkaID])
);
