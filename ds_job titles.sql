-- Data preparation 

select * from ds_salaries$


-- Cleaning data 
-- Deleting unnecessary data 

alter table ds_salaries$ drop column salary_currency 
alter table ds_salaries$ drop column salary
alter table ds_salaries$ drop column F1

select * from ds_salaries$

-- Working with freshest data 

delete from ds_salaries$ where work_year = '2020'
delete from ds_salaries$ where work_year = '2021'

select * from ds_salaries$

-- Build fundamentals for clear visualization 

select company_location from ds_salaries$ group by company_location

 update ds_salaries$ set company_location = replace(company_location, 'US', 'United States of America')
 update ds_salaries$ set company_location = replace(company_location, 'GB', 'Great Britian')
 update ds_salaries$ set company_location = replace(company_location, 'GR', 'Greece')
 update ds_salaries$ set company_location = replace(company_location, 'IE', 'Ireland')
 update ds_salaries$ set company_location = replace(company_location, 'IN', 'India')
 update ds_salaries$ set company_location = replace(company_location, 'LU', 'Luxembourg')
 update ds_salaries$ set company_location = replace(company_location, 'MX', 'Mexico')
 update ds_salaries$ set company_location = replace(company_location, 'MY', 'Malasia')
 update ds_salaries$ set company_location = replace(company_location, 'NL', 'Nederland')
 update ds_salaries$ set company_location = replace(company_location, 'PK', 'Pakistan')
 update ds_salaries$ set company_location = replace(company_location, 'PL', 'Poland')
 update ds_salaries$ set company_location = replace(company_location, 'PT', 'Portugal')
 update ds_salaries$ set company_location = replace(company_location, 'AE', 'United Arab Emirates')
 update ds_salaries$ set company_location = replace(company_location, 'AT', 'Austria')
 update ds_salaries$ set company_location = replace(company_location, 'AU', 'Australia')
 update ds_salaries$ set company_location = replace(company_location, 'CA', 'Canada')
 update ds_salaries$ set company_location = replace(company_location, 'CH', 'Switzerland')
 update ds_salaries$ set company_location = replace(company_location, 'CZ', 'Czechia')
 update ds_salaries$ set company_location = replace(company_location, 'DE', 'Germany')
 update ds_salaries$ set company_location = replace(company_location, 'DZ', 'Algeria')
 update ds_salaries$ set company_location = replace(company_location, 'EE', 'Estonia')
 update ds_salaries$ set company_location = replace(company_location, 'ES', 'Spain')
 update ds_salaries$ set company_location = replace(company_location, 'FR', 'France')


select experience_level from ds_salaries$ group by experience_level 

 update ds_salaries$ set experience_level = replace(experience_level, 'EN', 'Junior')
 update ds_salaries$ set experience_level = replace(experience_level, 'EX', 'Executive')
 update ds_salaries$ set experience_level = replace(experience_level, 'MI', 'Middle')
 update ds_salaries$ set experience_level = replace(experience_level, 'SE', 'Senior')

select * from ds_salaries$




-- Looking at higest paid jobs 

select distinct job_title,company_location, salary_in_usd  
from ds_salaries$ 
group by job_title,company_location, salary_in_usd 
order by 3 desc

-- Looking at top 10 highest paid data jobs

select top 10  job_title,company_location, experience_level, remote_ratio, employee_residence, salary_in_usd  
from ds_salaries$ 
group by job_title,company_location, salary_in_usd, employee_residence, experience_level, remote_ratio
order by 6 desc 

-- Count Of experience in each level

select * from ds_salaries$


select count(experience_level) from  ds_salaries$ where experience_level = 'Senior'
select job_title, count(experience_level) as count_of_titles from ds_salaries$ where experience_level = 'Senior'
group by job_title


select count(experience_level) from  ds_salaries$ where experience_level = 'Middle'
select job_title, count(experience_level) as count_of_titles from ds_salaries$ where experience_level = 'Middle'
group by job_title


select count(experience_level) from  ds_salaries$ where experience_level = 'Junior'
select job_title, count(experience_level) as count_of_titles  from ds_salaries$ where experience_level = 'Junior'
group by job_title


