CREATE TABLE [dbo].[PV] (
    [PvID]                 INT           IDENTITY (1, 1) NOT NULL PRIMARY KEY CLUSTERED ([PvID] ASC),
    [REK-NRO]              NVARCHAR (10) NOT NULL,
    [Katsastus]            DATE          NULL,
    [ADR]                  DATE          NULL,
    [Välitarkastus]        DATE          NULL,
    [Määräaikaistarkastus] DATE          NULL,
    [PvInfoID]             INT           NULL
);
