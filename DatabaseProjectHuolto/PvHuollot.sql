CREATE TABLE [dbo].[PvHuollot] (
    [HuollonID]     INT             NOT NULL PRIMARY KEY CLUSTERED ([HuollonID] ASC),
    [PvID]          INT             NULL,
    [HuoltoPvm]     DATE            NULL,
    [Huoltopaikka]  NVARCHAR (50)   NULL,
    [HuollonKuvaus] NVARCHAR (2000) NULL,
    [Kuva]          IMAGE           NULL,
    CONSTRAINT [FK_PvHuollot_Huoltopaikat] FOREIGN KEY ([Huoltopaikka]) REFERENCES [dbo].[Huoltopaikat] ([Huoltopaikka]),
    CONSTRAINT [FK_PvHuollot_Pv] FOREIGN KEY ([PvID]) REFERENCES [dbo].[PV] ([PvID])
);
