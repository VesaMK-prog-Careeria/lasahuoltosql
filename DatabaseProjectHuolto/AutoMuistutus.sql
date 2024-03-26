CREATE TABLE [dbo].[AutoMuistutus] (
    [AutoMuistutusID] INT  IDENTITY (1, 1) NOT NULL PRIMARY KEY CLUSTERED ([AutoMuistutusID] ASC),
    [AutoID]          INT  NULL,
    [MuistutusPVM]    DATE NULL,
    [Muistutustyyppi] INT  NULL,
    CONSTRAINT [FK_AutoMuistutus_Auto] FOREIGN KEY ([AutoID]) REFERENCES [dbo].[Auto] ([AutoID]),
    CONSTRAINT [FK_AutoMuistutus_Muistutustyyppi] FOREIGN KEY ([AutoMuistutusID]) REFERENCES [dbo].[Muistutustyyppi] ([Muistutustyyppi])
);

