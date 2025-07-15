SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
--SET QUOTED_IDENTIFIER ON|OFF
--SET ANSI_NULLS ON|OFF
--GO
CREATE PROCEDURE [dbo].[EmployeesInRegion]
    @Region AS NVARCHAR(15)
-- WITH ENCRYPTION, RECOMPILE, EXECUTE AS CALLER|SELF|OWNER| 'user_name'
AS
BEGIN
    SELECT EmployeeID,
           LastName,
           FirstName,
           Address,
           City,
           Region,
           PostalCode,
           Country
		   FROM dbo.Employees
		   WHERE Region = @Region
		   ORDER BY EmployeeID
END
GO
