CREATE TABLE [dbo].[SäiliöHuollot] (
    [HuoltoID]       INT            NOT NULL PRIMARY KEY CLUSTERED ([HuoltoID] ASC),
    [SäiliöID]       INT            NOT NULL,
    [HuoltoPvm]      DATE           NULL,
    [HuoltoPaikkaID] NCHAR (50)     NULL,
    [HuollonKuvaus]  NVARCHAR (200) NULL,
    [Kuva]           IMAGE          NULL,
    CONSTRAINT [FK_SäiliöHuollot_HuoltoPaikka] FOREIGN KEY ([HuoltoPaikkaID]) REFERENCES [dbo].[Huoltopaikat] ([HuoltoPaikkaID]),
    CONSTRAINT [FK_SäiliöHuollot_Säiliö] FOREIGN KEY ([SäiliöID]) REFERENCES [dbo].[Säiliö] ([SäiliöID])
);
