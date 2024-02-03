#After loading the file into postgresql db
select * from covid_data limit 10;

#keeping only india data
delete from covid_data where location in (
select location from covid_data where location != 'India'
)

#new table for covid deaths
create table covidIndiaDeaths(
iso_code text,
continent text,
location text,
date text,
population double precision,
total_cases double precision,
new_cases double precision,
new_cases_smoothed double precision,
total_deaths double precision,
new_deaths double precision,
new_deaths_smoothed double precision,
new_cases_per_million double precision,
new_cases_smoothed_per_million double precision,
total_deaths_per_million double precision,
new_deaths_per_million double precision
);

insert into covidIndiaDeaths select 
iso_code,	continent,location,date,population,total_cases,new_cases,new_cases_smoothed,total_deaths,new_deaths,new_deaths_smoothed,
	new_cases_per_million,new_cases_smoothed_per_million,total_deaths_per_million,new_deaths_per_million from covid_data;

select * from covidIndiaDeaths;

#new table for vaccinations
create table covidIndiaVaccination(
iso_code text,
continent text,
location text,
date text,
population double precision,
total_tests double precision,
new_tests double precision,
total_tests_per_thousand double precision,
new_tests_per_thousand double precision,
new_tests_smoothed double precision,
new_tests_smoothed_per_thousand double precision,
positive_rate double precision,
tests_per_case double precision,
tests_units text COLLATE pg_catalog."default",
total_vaccinations double precision,
people_vaccinated double precision,
people_fully_vaccinated double precision,
total_boosters double precision,
new_vaccinations double precision,
new_vaccinations_smoothed double precision,
total_vaccinations_per_hundred double precision,
people_vaccinated_per_hundred double precision,
people_fully_vaccinated_per_hundred double precision,
total_boosters_per_hundred double precision,
new_vaccinations_smoothed_per_million double precision,
new_people_vaccinated_smoothed double precision,
new_people_vaccinated_smoothed_per_hundred double precision,
stringency_index double precision,
population_density double precision,
median_age double precision,
aged_65_older double precision,
aged_70_older double precision,
gdp_per_capita double precision,
extreme_poverty double precision,
cardiovasc_death_rate double precision,
diabetes_prevalence double precision,
female_smokers double precision,
male_smokers double precision,
handwashing_facilities double precision,
hospital_beds_per_thousand double precision,
life_expectancy double precision,
human_development_index double precision,
excess_mortality_cumulative_absolute double precision,
excess_mortality_cumulative double precision,
excess_mortality double precision,
excess_mortality_cumulative_per_million double precision);


insert into covidIndiaVaccination select 
iso_code,	continent,location,date,population, total_tests,new_tests,total_tests_per_thousand,
new_tests_per_thousand,new_tests_smoothed,
new_tests_smoothed_per_thousand,
positive_rate,
tests_per_case ,
tests_units ,
total_vaccinations ,
people_vaccinated ,
people_fully_vaccinated ,
total_boosters,
new_vaccinations ,
new_vaccinations_smoothed ,
total_vaccinations_per_hundred,
people_vaccinated_per_hundred ,
people_fully_vaccinated_per_hundred ,
total_boosters_per_hundred,
new_vaccinations_smoothed_per_million,
new_people_vaccinated_smoothed ,
new_people_vaccinated_smoothed_per_hundred,
stringency_index,
population_density ,
median_age ,
aged_65_older ,
aged_70_older ,
gdp_per_capita,
extreme_poverty ,
cardiovasc_death_rate,
diabetes_prevalence,
female_smokers,
male_smokers,
handwashing_facilities ,
hospital_beds_per_thousand,
life_expectancy ,
human_development_index ,
excess_mortality_cumulative_absolute ,
excess_mortality_cumulative ,
excess_mortality ,
excess_mortality_cumulative_per_million from covid_data;


select * from covidIndiaVaccination;










