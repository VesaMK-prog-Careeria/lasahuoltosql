CREATE TABLE [dbo].[PvHuollot] (
    [HuoltoID]       INT             NOT NULL PRIMARY KEY CLUSTERED ([HuoltoID] ASC),
    [PvID]           INT             NOT NULL,
    [HuoltoPvm]      DATE            NULL,
    [HuoltoPaikkaID] INT             NULL,
    [HuollonKuvaus]  NVARCHAR (2000) NULL,
    [Kuva]           IMAGE           NULL,
    CONSTRAINT [FK_PvHuollot_HuoltoPaikka] FOREIGN KEY ([HuoltoPaikkaID]) REFERENCES [dbo].[Huoltopaikat] ([HuoltoPaikkaID]),
    CONSTRAINT [FK_PvHuollot_Pv] FOREIGN KEY ([PvID]) REFERENCES [dbo].[PV] ([PvID])
);
