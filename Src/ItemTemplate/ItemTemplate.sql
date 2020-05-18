/* Changes to this template can be proposed at https://github.com/GregTrevellick/VsixItemTemplateSqlScriptSchema/blob/master/Src/ItemTemplate/ItemTemplate.sql */

IF NOT EXISTS
			(SELECT 1 
			FROM sys.views vws
			INNER JOIN sys.schemas sch ON sch.schema_id = vws.schema_id 
			WHERE sch.[name] = 'dbo' 
			AND vws.[name] = 'MyView')
BEGIN
	EXECUTE('CREATE VIEW dbo.MyView AS SELECT NULL AS MyDummyColumn')
END
GO

ALTER VIEW dbo.MyView AS
	SELECT 1 AS MyRealColumn