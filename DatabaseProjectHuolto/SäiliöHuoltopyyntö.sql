CREATE TABLE [dbo].[SäiliöHuoltopyyntö] (
    [HuoltoID]      INT             NOT NULL PRIMARY KEY CLUSTERED ([HuoltoID] ASC),
    [SäiliöID]      INT             NOT NULL,
    [HuollonKuvaus] NVARCHAR (2000) NULL,
    [Kuva]          IMAGE           NULL,
    CONSTRAINT [FK_SäiliöHuoltopyyntö_Säiliö] FOREIGN KEY ([SäiliöID]) REFERENCES [dbo].[Säiliö] ([SäiliöID])
);

