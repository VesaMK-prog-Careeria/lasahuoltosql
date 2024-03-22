CREATE TABLE [dbo].[PvHuollot] (
    [HuollonID]         INT           NOT NULL PRIMARY KEY,
    [PvID]              INT           NULL,
    [HuoltoPvm]         DATE          NULL,
    [Huoltopaikka]      NVARCHAR(50)  NULL,
    [HuollonKuvaus]     NVARCHAR(2000) NULL,
    [Image]             VARBINARY(MAX) NULL,
    CONSTRAINT [FK_PvHuollot_Pv] FOREIGN KEY ([PvID]) REFERENCES [dbo].[Pv] ([PvID]),
    CONSTRAINT [FK_PvHuollot_Huoltopaikat] FOREIGN KEY ([Huoltopaikka]) REFERENCES [dbo].[Huoltopaikat] ([HuoltoPaikka])
);
