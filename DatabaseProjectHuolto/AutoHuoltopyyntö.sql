CREATE TABLE [dbo].[AutoHuoltopyyntö] (
    [HuoltoID]      INT             NOT NULL PRIMARY KEY CLUSTERED ([HuoltoID] ASC),
    [AutoID]        INT             NOT NULL,
    [HuollonKuvaus] NVARCHAR (2000) NULL,
    [Kuva]          IMAGE           NULL,
    CONSTRAINT [FK_AutoHuoltopyyntö_Auto] FOREIGN KEY ([AutoID]) REFERENCES [dbo].[Auto] ([AutoID])
);

