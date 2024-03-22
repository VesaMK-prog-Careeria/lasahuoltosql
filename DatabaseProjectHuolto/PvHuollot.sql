CREATE TABLE [dbo].[PvHuollot] (
    [HuoltoID]      INT             NOT NULL PRIMARY KEY CLUSTERED ([HuoltoID] ASC),
    [PvID]          INT             NOT NULL,
    [HuoltoPvm]     DATE            NULL,
    [Huoltopaikka]  NVARCHAR (50)   NULL,
    [HuollonKuvaus] NVARCHAR (2000) NULL,
    [Kuva]          IMAGE           NULL,
    CONSTRAINT [FK_PvHuollot_Huoltopaikat] FOREIGN KEY ([Huoltopaikka]) REFERENCES [dbo].[Huoltopaikat] ([Huoltopaikka]),
    CONSTRAINT [FK_PvHuollot_Pv] FOREIGN KEY ([PvID]) REFERENCES [dbo].[PV] ([PvID])
);
