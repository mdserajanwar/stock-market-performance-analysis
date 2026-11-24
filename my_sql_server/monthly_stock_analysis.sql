-- Monthly Stock Analysis
-- Monthly Total Record

select [Month], count(*) as total_recods from Globalstockmarket.dbo.Stock_Clean
group by [Month] order by ([Month]);

-- Monthly Average Closing Price
select [Month], Company, ROUND(AVG([Close]), 2) as average_cloase_price from Globalstockmarket.dbo.Stock_Clean
group by [Month], Company order by [Month];

-- Monthly Average Daily Return
select [Month], round(avg(Daily_Return), 4) as average_return from Globalstockmarket.dbo.Stock_Clean
group by [Month] order by [Month];