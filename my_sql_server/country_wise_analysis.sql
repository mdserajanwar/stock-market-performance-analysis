 -- Company-wise Stock Analysis
 --Objective: Analyze stock prices and compare company performance.
select * from Globalstockmarket.dbo.Stock_Clean;

---- Average Closing Price
select Company, ROUND(AVG([Close]), 2) as average_close from Globalstockmarket.dbo.Stock_Clean 
group by Company Order by average_close desc;

-----  Maximum Close Price
select Company, MAX([Close]) as highest_close from Globalstockmarket.dbo.Stock_Clean
group by Company Order by highest_close desc;

----   Minimum CLose Price
select Company, MIN([Close]) as lowest_close from Globalstockmarket.dbo.Stock_Clean
group by Company order by lowest_close asc;

-- Highest Treading Volume
select Company,SUM([Volume]) as total_volume from Globalstockmarket.dbo.Stock_Clean
group by Company order by total_volume desc;

-- Total Count Country Wise
select Company, COUNT(*) as total_records from Globalstockmarket.dbo.Stock_Clean
group by Company order by total_records desc;



