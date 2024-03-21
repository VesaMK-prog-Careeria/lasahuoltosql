CREATE TABLE [dbo].[Login] (
    [LoginID]        INT           IDENTITY (1, 1) NOT NULL PRIMARY KEY CLUSTERED ([LoginID] ASC),
    [Käyttäjätunnus] NVARCHAR (50) NOT NULL,
    [Salasana]       NVARCHAR (50) NOT NULL
);
