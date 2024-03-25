CREATE TABLE [dbo].[SäiliöMuistutus] (
    [MuistutusID]     INT  IDENTITY (1, 1) NOT NULL PRIMARY KEY CLUSTERED ([MuistutusID] ASC),
    [SäiliöID]            INT  NULL,
    [MuistutusPVM]    DATE NULL,
    [Muistutustyyppi] INT  NULL,
    CONSTRAINT [FK_SäiliöMuistutus_Muistutustyyppi] FOREIGN KEY ([MuistutusID]) REFERENCES [dbo].[Muistutustyyppi] ([Muistutustyyppi]),
    CONSTRAINT [FK_SäiliöMuistutus_Säiliö] FOREIGN KEY ([SäiliöID]) REFERENCES [dbo].[Säiliö] ([SäiliöID])
);

