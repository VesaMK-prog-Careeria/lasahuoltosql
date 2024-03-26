CREATE TABLE [dbo].[SäiliöMuistutus] (
    [SäiliöMuistutusID] INT  IDENTITY (1, 1) NOT NULL PRIMARY KEY CLUSTERED ([SäiliöMuistutusID] ASC),
    [SäiliöID]          INT  NULL,
    [MuistutusPVM]      DATE NULL,
    [Muistutustyyppi]   INT  NULL,
    CONSTRAINT [FK_SäiliöMuistutus_Muistutustyyppi] FOREIGN KEY ([SäiliöMuistutusID]) REFERENCES [dbo].[Muistutustyyppi] ([Muistutustyyppi]),
    CONSTRAINT [FK_SäiliöMuistutus_Säiliö] FOREIGN KEY ([SäiliöID]) REFERENCES [dbo].[Säiliö] ([SäiliöID])
);

