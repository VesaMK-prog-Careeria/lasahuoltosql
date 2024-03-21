CREATE TABLE [dbo].[Auto] (
    [AutoID]           INT           IDENTITY (1, 1) NOT NULL PRIMARY KEY CLUSTERED ([AutoID] ASC),
    [REK-NRO]          NVARCHAR (10) NOT NULL,
    [SäiliöID]         INT           NULL,
    [Katsastus]        DATE          NULL,
    [ADR]              DATE          NULL,
    [Piirturi]         DATE          NULL,
    [Alkolukko]        DATE          NULL,
    [Nopeudenrajoitin] DATE          NULL,
    [AutoInfoID]       INT           NULL,
    CONSTRAINT [FK_Auto_Säiliö] FOREIGN KEY ([SäiliöID]) REFERENCES [dbo].[Säiliö] ([SäiliöID])
);
