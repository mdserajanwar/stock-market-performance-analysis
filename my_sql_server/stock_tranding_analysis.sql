--Stock Performance Analysis

--avg(Open) – Average opening price.
--avg(Close) – Average closing price.
--max(High) – Highest recorded price.
--min(Low) – Lowest recorded price.


select Company,round(avg([Open]), 2) as average_open,round(avg([Close]), 2) as average_close,
max([High]) as highest_price,min([Low]) as lowest_price
from Globalstockmarket.dbo.Stock_Clean group by Company order by highest_price desc;

--Trading Volume Analysis

select Company,sum(volume) as total_volume, round(avg(volume), 2) as average_volume
from Globalstockmarket.dbo.Stock_Clean group by Company order by total_volume desc;