CREATE TABLE [dbo].[MemoryTable] (
    [PlanId]          NVARCHAR (50)  NULL,
    [AgentName]       NVARCHAR (50)  NULL,
    [TaskId]          NVARCHAR (50)  NULL,
    [Role]            NVARCHAR (50)  NULL,
    [Message]         NVARCHAR (MAX) NULL,
    [MessageType]     NVARCHAR (50)  NULL,
    [FromAgent]       NVARCHAR (200) NULL,
    [InsertTimeStamp] DATETIME       DEFAULT (getdate()) NOT NULL
);
GO

