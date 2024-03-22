CREATE TABLE [dbo].[SäiliöHuollot] (
    [HuollonID]      INT            NOT NULL PRIMARY KEY CLUSTERED ([HuollonID] ASC),
    [SäiliöID]       INT            NULL,
    [HuoltoPVM]      DATE           NULL,
    [HuoltoPaikkaID] NCHAR (50)     NULL,
    [HuollonKuvaus]  NVARCHAR (200) NULL,
    [Image]          IMAGE          NULL,
    CONSTRAINT [FK_SäiliöHuollot_HuoltoPaikka] FOREIGN KEY ([HuoltoPaikkaID]) REFERENCES [dbo].[Huoltopaikat] ([HuoltoPaikkaID]),
    CONSTRAINT [FK_SäiliöHuollot_Säiliö] FOREIGN KEY ([SäiliöID]) REFERENCES [dbo].[Säiliö] ([SäiliöID])
);
