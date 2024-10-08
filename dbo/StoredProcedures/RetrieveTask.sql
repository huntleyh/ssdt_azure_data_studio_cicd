

CREATE PROCEDURE [dbo].[RetrieveTask]
	@taskId nvarchar(50),
	@agentName nvarchar(200),
	@task nvarchar(500)

AS
BEGIN
    Select Task FROM TaskTracker WHERE TaskId = @taskId and AgentName = @agentName and Task = @task
END
GO

