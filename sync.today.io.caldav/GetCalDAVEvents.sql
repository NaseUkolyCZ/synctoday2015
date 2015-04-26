/* 
declare @idVal int = 0
declare @ExternalIdVal nvarchar(2048) = NULL
declare @InternalIdVal uniqueidentifier = NULL
*/

declare @IsNew char(1) = @IsNewVal

SELECT Id
      ,InternalId
      ,ExternalId
      ,[Description]
      ,Start
      ,[End]
      ,LastModified
      ,Location
      ,Summary
      ,CategoriesJSON
      ,ServiceAccountId
      ,Upload
      ,Tag
      ,IsNew
      ,WasJustUpdated
      ,LastDLError
      ,LastUPError
  FROM CalDavEvents
  where 
		IsNew = ( CASE WHEN @IsNew = '' THEN IsNew ELSE ISNULL( @IsNew, IsNew ) END )
