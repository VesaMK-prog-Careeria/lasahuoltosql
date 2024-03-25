CREATE TABLE [dbo].[AutoMuistutus] (
    [MuistutusID]     INT  IDENTITY (1, 1) NOT NULL PRIMARY KEY CLUSTERED ([MuistutusID] ASC),
    [AutoID]            INT  NULL,
    [MuistutusPVM]    DATE NULL,
    [Muistutustyyppi] INT  NULL,
    CONSTRAINT [FK_PvMuistutus_Muistutustyyppi] FOREIGN KEY ([MuistutusID]) REFERENCES [dbo].[Muistutustyyppi] ([Muistutustyyppi]),
    CONSTRAINT [FK_AutoMuistutus_Auto] FOREIGN KEY ([AutoID]) REFERENCES [dbo].[Auto] ([AutoID])
);

