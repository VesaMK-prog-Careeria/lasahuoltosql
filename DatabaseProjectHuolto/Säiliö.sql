CREATE TABLE [dbo].[Säiliö] (
    [SäiliöID]             INT  IDENTITY (1, 1) NOT NULL PRIMARY KEY CLUSTERED ([SäiliöID] ASC),
    [SäiliöNro]            INT  NOT NULL,
    [Vakaus]               DATE NULL,
    [Välitarkastus]        DATE NULL,
    [Määräaikaistarkastus] DATE NULL,
    [SäiliöInfoID]         INT  NULL
);
