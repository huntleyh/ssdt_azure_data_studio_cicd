CREATE PROCEDURE [dbo].[RetrieveMemory]
    @planId NVARCHAR(50),
    @agentName NVARCHAR(50),
    @taskId NVARCHAR(50)
AS
BEGIN
    SELECT * FROM MemoryTable m
    WHERE PlanId = @planId AND AgentName = @agentName AND TaskId = @taskId
	ORDER BY m.InsertTimeStamp ASC
END
GO

