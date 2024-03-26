CREATE TABLE [dbo].[PvMuistutus] (
    [PvMuistutusID]   INT  IDENTITY (1, 1) NOT NULL PRIMARY KEY CLUSTERED ([PvMuistutusID] ASC),
    [PvID]            INT  NULL,
    [MuistutusPVM]    DATE NULL,
    [Muistutustyyppi] INT  NULL,
    CONSTRAINT [FK_PvMuistutus_Muistutustyyppi] FOREIGN KEY ([PvMuistutusID]) REFERENCES [dbo].[Muistutustyyppi] ([Muistutustyyppi]),
    CONSTRAINT [FK_PvMuistutus_PV] FOREIGN KEY ([PvID]) REFERENCES [dbo].[PV] ([PvID])
);
