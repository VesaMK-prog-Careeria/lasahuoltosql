CREATE TABLE [dbo].[PvInfo] (
    [PvInfoID] INT            IDENTITY (1, 1) NOT NULL PRIMARY KEY CLUSTERED ([PvInfoID] ASC),
    [PvID]     INT            NOT NULL,
    [InfoTXT]  NVARCHAR (MAX) NULL,
    [Kuva]     IMAGE          NULL,
    CONSTRAINT [FK_PvInfo_PvInfo] FOREIGN KEY ([PvInfoID]) REFERENCES [dbo].[PvInfo] ([PvInfoID])
);
