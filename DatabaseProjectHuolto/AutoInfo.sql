CREATE TABLE [dbo].[AutoInfo] (
    [AutoInfoID] INT            IDENTITY (1, 1) NOT NULL PRIMARY KEY CLUSTERED ([AutoInfoID] ASC),
    [AutoID]     INT            NOT NULL,
    [InfoTXT]    NVARCHAR (MAX) NULL,
    [Kuva]       IMAGE          NULL,
    CONSTRAINT [FK_AutoInfo_Auto] FOREIGN KEY ([AutoInfoID]) REFERENCES [dbo].[AutoInfo] ([AutoInfoID])
);
