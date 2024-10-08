CREATE TABLE [dbo].[TaskTracker] (
    [id]               INT            IDENTITY (1, 1) NOT NULL,
    [PlanId]           NVARCHAR (50)  NOT NULL,
    [TaskId]           NVARCHAR (50)  NOT NULL,
    [AgentName]        NVARCHAR (200) NULL,
    [Task]             NVARCHAR (500) NULL,
    [insert_timestamp] DATETIME       NOT NULL,
    [Status]           NVARCHAR (500) NOT NULL,
    [Detail]           NVARCHAR (500) NULL,
    [ChatHistory]      NVARCHAR (500) NULL
);
GO

ALTER TABLE [dbo].[TaskTracker]
    ADD CONSTRAINT [DF_TaskTracker_insert_timestamp] DEFAULT (getdate()) FOR [insert_timestamp];
GO

ALTER TABLE [dbo].[TaskTracker]
    ADD CONSTRAINT [PK_TaskTracker] PRIMARY KEY CLUSTERED ([id] ASC);
GO

