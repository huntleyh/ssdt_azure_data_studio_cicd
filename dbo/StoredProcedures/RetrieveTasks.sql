CREATE PROCEDURE [dbo].[RetrieveTasks]
    @planId NVARCHAR(50),
    @taskId NVARCHAR(50)
AS
BEGIN
    SELECT * FROM TaskTracker
    WHERE PlanId = @planId AND TaskId = @taskId
END

select * from TaskTracker
GO

