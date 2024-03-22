CREATE TABLE [dbo].[AutoHuollot] (
    [HuollonID]      INT            IDENTITY (1, 1) NOT NULL PRIMARY KEY CLUSTERED ([HuollonID] ASC),
    [AutoID]         INT            NOT NULL,
    [HuoltoPvm]      DATETIME       NOT NULL,
    [HuoltopaikkaID] NVARCHAR (50)  NULL,
    [HuollonKuvaus]  NVARCHAR (MAX) NULL,
    [Kuva]           IMAGE          NULL,
    CONSTRAINT [FK_AutoHuollot_AutoHuollot] FOREIGN KEY ([HuollonID]) REFERENCES [dbo].[AutoHuollot] ([HuollonID])
);
