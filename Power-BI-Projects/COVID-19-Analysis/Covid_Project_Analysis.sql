create database covid_project;
use covid_project;

select * from country_wise_latest
limit 5;

#Total Cases
select sum(confirmed) as Total_Cases
from country_wise_latest;

#Total Deaths
select sum(Deaths) as Total_Deaths
from country_wise_latest;

#Top5 Countries by confirmed Cases
select `Country/Region`, Confirmed
from country_wise_latest
order by Confirmed desc
limit 5;

# Total Recovered
select sum(Recovered)
from country_wise_latest;

# Countries with highest weekly increase
select `Country/Region`, `1 week change`
from country_wise_latest
order by '1 week change' desc
limit 10;

# WHO Region wise Total Cases
select `Who Region`, sum(Confirmed) as Total_Cases
from country_wise_latest
group by `Who Region`
order by Total_Cases;





