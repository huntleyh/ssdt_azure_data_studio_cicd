

CREATE PROCEDURE [dbo].[AddTask]
    @planId NVARCHAR(50),
	@taskId NVARCHAR(50),
	@agentName NVARCHAR(50),
	@task NVARCHAR(MAX)

AS
BEGIN
    INSERT INTO TaskTracker (PlanId, TaskId, AgentName, Task, insert_timestamp, Status, Detail)
    VALUES (@planId, @taskId, @agentName, @task, getdate(), 'NOT DONE', 'Not started')
END
GO

