CREATE TABLE [dbo].[Login] (
    [LoginID]        INT           NOT NULL,
    [Käyttäjätunnus] NVARCHAR (50) NOT NULL,
    [Salasana]       NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED ([LoginID] ASC)
);


GO

