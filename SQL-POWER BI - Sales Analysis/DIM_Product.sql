SELECT 
   p.[ProductKey],
   p.[ProductAlternateKey] AS PproductItemCode ,
   p.[EnglishProductName] AS [Product Name],
   ps.EnglishProductSubcategoryName AS [Sub Category],
   pc.EnglishProductCategoryName AS [Product Category], 
   p.[Color] AS [Product Color],
   p.[Size] AS [Product Size],
   p.[ProductLine] AS [Product Line],
   p.[ModelName] AS [Product Model Name],
   p.[EnglishDescription] AS [Product Desription],
         p.Status AS example,
    ISNULL(p.Status, 'Outdated') AS [Product Status] 
  FROM
     [dbo].[DimProduct] as p
	 LEFT JOIN dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
	 LEFT JOIN dbo.DimProductCategory AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey
  order by 
     p.ProductKey asc
  
  
  