CREATE TABLE [dbo].[PvMuistutus] (
    [MuistutusID]     INT  IDENTITY (1, 1) NOT NULL PRIMARY KEY CLUSTERED ([MuistutusID] ASC),
    [PvID]            INT  NULL,
    [MuistutusPVM]    DATE NULL,
    [Muistutustyyppi] INT  NULL,
    CONSTRAINT [FK_PvMuistutus_Muistutustyyppi] FOREIGN KEY ([MuistutusID]) REFERENCES [dbo].[Muistutustyyppi] ([Muistutustyyppi]),
    CONSTRAINT [FK_PvMuistutus_PV] FOREIGN KEY ([PvID]) REFERENCES [dbo].[PV] ([PvID])
);
