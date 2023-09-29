create database yt_project;

use yt_project;

show tables;

select * from yt_stats;

#Data cleaning

describe yt_stats;

update yt_stats
set subscribers_for_last_30_days = 0
where subscribers_for_last_30_days = 'nan';

alter table yt_stats
modify column subscribers_for_last_30_days int;

update yt_stats
set Youtuber = 'KIMPRO'
where Youtuber = 'ýýýýýýýýý KIMPRO';

select * from yt_stats
where category = 'nan';

#Top 5 records of category and country-wise channel numbers

select category, Country, count(*) as count
from yt_stats
group by category, Country
order by count desc
limit 5;

#top 5 highest uploads n names of these YouTubers

select Youtuber, uploads
from yt_stats
order by uploads desc
limit 5;

#country-wise distribution of YouTube channels

select Country, count(*) as count,
dense_rank() OVER ( ORDER BY count(*)) row_num
from yt_stats
group by Country
order by count
;

#channels created in intervals

set sql_safe_updates=0;

update yt_stats
set created_year = 2005
where created_year < 2005;

select
	case
		when created_year>=2005 and created_year<2010 then '2005-2010'
        when created_year>=2010 and created_year<2015 then '2010-2015'
        when created_year>=2015 and created_year<2020 then '2015-2020'
        else '2020+'
	end as year_created,
    count(*) as count
    from yt_stats
    group by year_created
    order by year_created;

#top 5 highest subs gains in last 30 days

select Youtuber, subscribers_for_last_30_days
from yt_stats
where subscribers_for_last_30_days <> 0
order by subscribers_for_last_30_days desc
limit 5;

#India's top 5 highest yearly earnings

select Youtuber, highest_yearly_earnings
from yt_stats
where Country = "India"
order by highest_yearly_earnings desc
limit 5;

#top 5 overall highest monthly earnings

select Youtuber, highest_monthly_earnings
from yt_stats
order by highest_monthly_earnings desc
limit 5;

#channels from India by category

select category, count(*) as count, sum(highest_yearly_earnings) as yearly_earnings
from yt_stats
where Country = 'India' and category <> 'nan'
group by category
order by yearly_earnings desc;

#channels from India from the most trending category and their highest yearly earnings

select Youtuber, category, highest_yearly_earnings
from yt_stats
where Country = 'India' and category= (
select category
from yt_stats
where Country= 'India'
group by category
order by count(*) desc
limit 1)
;