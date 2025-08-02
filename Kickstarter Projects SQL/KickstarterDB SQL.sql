SELECT TOP 10 * FROM [dbo].[ks-projects-201801];
SELECT TOP 100 * FROM [dbo].[ks-projects-201801];
SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'ks-projects-201801';
SELECT
  SUM(CASE WHEN [name] IS NULL THEN 1 ELSE 0 END) AS NullName,
  SUM(CASE WHEN [usd_pledged] IS NULL THEN 1 ELSE 0 END) AS NullUsdPledged
FROM [dbo].[ks-projects-201801];
SELECT
  COUNT(*) AS TotalProjects,
  SUM(CASE WHEN state = 'successful' THEN 1 ELSE 0 END) AS SuccessfulProjects,
  ROUND(100.0 * SUM(CASE WHEN state = 'successful' THEN 1 ELSE 0 END) / COUNT(*), 2) AS SuccessRatePercent
FROM [dbo].[ks-projects-201801];
SELECT
  main_category,
  COUNT(*) AS TotalProjects,
  SUM(CASE WHEN state = 'successful' THEN 1 ELSE 0 END) AS SuccessfulProjects,
  ROUND(100.0 * SUM(CASE WHEN state = 'successful' THEN 1 ELSE 0 END) * 1.0 / COUNT(*), 2) AS SuccessRate
FROM [dbo].[ks-projects-201801]
GROUP BY main_category
ORDER BY SuccessRate DESC;
SELECT TOP 10
  name,
  main_category,
  usd_pledged_real,
  usd_goal_real,
  backers
FROM [dbo].[ks-projects-201801]
ORDER BY usd_pledged_real DESC;
SELECT country, COUNT(*) AS ProjectCount
FROM [dbo].[ks-projects-201801]
GROUP BY country
ORDER BY ProjectCount DESC;
SELECT
  main_category,
  ROUND(AVG(usd_goal_real), 2) AS AvgGoalUSD
FROM [dbo].[ks-projects-201801]
GROUP BY main_category
ORDER BY AvgGoalUSD DESC;
SELECT
  YEAR(CAST(launched AS datetime2)) AS LaunchYear,
  COUNT(*) AS ProjectsLaunched
FROM [dbo].[ks-projects-201801]
GROUP BY YEAR(CAST(launched AS datetime2))
ORDER BY LaunchYear;
SELECT
  state,
  COUNT(*) AS ProjectCount,
  ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM [dbo].[ks-projects-201801]), 2) AS Percentage
FROM [dbo].[ks-projects-201801]
GROUP BY state
ORDER BY ProjectCount DESC;
