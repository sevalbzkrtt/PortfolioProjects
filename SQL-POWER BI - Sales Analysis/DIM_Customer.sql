SELECT 
    c.customerkey AS CustomerKey,
    c.firstname AS [First Name],
    c.lastname AS [Last Name],
	c.firstname + ' ' + lastname AS [Full Name],
    CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,

 c.datefirstpurchase AS DateFirstPurchase,            
  g.city AS [Customer City] 
  FROM 
      dbo.dimcustomer AS c 
	  LEFT JOIN dbo.dimgeography AS g ON g.geographykey = c.geographykey
  ORDER BY
      CustomerKey ASC