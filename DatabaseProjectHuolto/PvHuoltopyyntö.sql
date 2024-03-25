CREATE TABLE [dbo].[PvHuoltopyyntö] (
    [HuoltoID]      INT             NOT NULL PRIMARY KEY CLUSTERED ([HuoltoID] ASC),
    [PvID]      INT             NOT NULL,
    [HuollonKuvaus] NVARCHAR (2000) NULL,
    [Kuva]          IMAGE           NULL,
    CONSTRAINT [FK_PvHuoltopyyntö_PV] FOREIGN KEY ([PvID]) REFERENCES [dbo].[PV] ([PvID])
);

