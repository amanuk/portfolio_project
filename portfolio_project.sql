
-- Tableau Table 1

Select SUM(new_cases) as total_cases, SUM(cast(new_deaths as int)) as total_deaths, SUM(cast
(new_deaths as int)) /SUM(new_cases)*100 as Deathpercetage
From Portfolio_Project..Covid_Deaths$
-- where location like '%states%;
where continent is not null
--Group by date
order by 1,2


-- Tableau Table 

Select location, SUM(cast(new_deaths as int)) as TotalDeathCount
From Portfolio_Project..Covid_Deaths$
--where location like '%states%'
where location in ('Europe','North America','South America','Asia','Africa','Oceania')
and continent is null
Group by Location
order by TotalDeathCount desc


-- Tableau Table 3

Select Location, Population, MAX(total_cases) as HighestinfectionCount,
MAX((total_cases/population))*100 as PercentPopulationInfected
From Portfolio_Project..Covid_Deaths$
--where location like '%states%'
Group by Location, Population
order by PercentPopulationInfected desc


-- Tableau Table 4

Select Location, Population,date, MAX(total_cases) as HighestinfectionCount,
MAX((total_cases/population))*100 as PercentPopulationInfected
From Portfolio_Project..Covid_Deaths$
--where location like '%states%'
Group by Location, Population, date
order by PercentPopulationInfected desc

