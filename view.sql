IF NOT EXISTS
			(SELECT 1 
			FROM sys.views vws
			INNER JOIN sys.schemas sch ON sch.schema_id = vws.schema_id 
			WHERE sch.[name] = 'dbo' 
			AND vws.[name] = 'MyView')
BEGIN
	--Create dummy object
	EXECUTE('CREATE VIEW dbo.MyView AS SELECT NULL AS MyDummyColumn')
END
GO

--Alter the object rather than delete and recreate so as to retain permissions, plans, history, etc, gregt
ALTER VIEW dbo.MyView AS
	SELECT 1 AS MyRealColumn