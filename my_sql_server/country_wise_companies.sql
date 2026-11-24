-- Total Count Country Wise

--  Country-wise Total Records
select Country, COUNT(*) as total_recod from Globalstockmarket.dbo.Stock_Clean group by Country;

--  Country-wise Companies 
select Country, COUNT(Distinct Company) from Globalstockmarket.dbo.Stock_Clean group by Country;

--   Country-wise Average Daily Return
select Country, ROUND(AVG(CAST(Daily_Return as decimal(15,8))), 4) as average_daily_return 
from Globalstockmarket.dbo.Stock_Clean group by Country;