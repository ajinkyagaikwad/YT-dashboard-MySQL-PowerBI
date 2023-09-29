# YT-dashboard-MySQL-PowerBI

![screenshot](https://github.com/ajinkyagaikwad/YT-dashboard-MySQL-PowerBI/assets/7068818/17b29254-578d-46c8-80cd-0317488e02bc)

# Data Used
**Data** - YouTube Data with 995 rows till 2023, sourced from https://www.kaggle.com/ 

**Data Cleaning & Analysis** - MySQL Workbench

**Data Visualization** - PowerBI

# Questions

What are the top 5 category and country-wise channel names?

What are the names of the top 5 most uploaded YouTubers alongwith number of uploads?

What is the country-wise distribution of YouTube channels?

How many YouTube channels have been opened in equally-spaced intervals?

Which 5 YouTubers gained the most subscribers in the past 30 days?

What are the channels that made highest monthly earnings as well as those Indian channels that made highest yearly earnings?

What is the category-wise distribution of channels in India?

What is the earning trend of the channels from the most trending category (Entertainment) ?

# Summary of Findings

Most of the channels were created between 2010 and 2015

United States has the most number of channels, followed by India

Most uploads by any YouTuber has all the news reporting channels in top 5

Among the top earning Indian YouTube channels, all of them are studio managed ones, and none is an individual channel

Entertainment category tops in terms of most subscribers gained in the last 30 days

Music channels were at the front in terms of overall monthly earnings

In the top 3 categories of channels (Entertainment, Music, People & Blogs), US has more number of channels than India

Though there is no direct correlation between yearly earnings and number of subscribers, more subscribers help increase the overall yearly earnings

# Limitations

Some records had 'nan' as a category, which was omitted while querying category-wise distribution of YouTube channels in India(39 records).

Name of a channel 김프로 KIMPRO (recorded as 'ýýýýýýýýý KIMPRO') was updated to 'KIMPRO'.

Many records were missing entries in 'subscribers_for_last_30_days' column. These rows were updated with 0 subscribers_for_last_30_days, and the datatype changed to integer.

# Full report

It can be viewed in the pdf format uploaded here as 'Global YouTube Statistics.pdf'
