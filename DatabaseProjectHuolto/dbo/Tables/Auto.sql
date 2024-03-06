CREATE TABLE [dbo].[Auto] (
    [REK-NRO]          NVARCHAR (10)  NOT NULL,
    [Katsastus]        DATE           NULL,
    [ADR]              DATE           NULL,
    [Piirturi]         DATE           NULL,
    [Alkolukko]        DATE           NULL,
    [Nopeudenrajoitin] DATE           NULL,
    [INFO]             NVARCHAR (MAX) NULL,
    [Kuva]             IMAGE          NULL,
    CONSTRAINT [PK_Auto] PRIMARY KEY CLUSTERED ([REK-NRO] ASC)
);


GO

