COVID-19 Data Analysis | SQL + Power BI
Project Overview
This project analyzes global COVID-19 data using SQL for data exploration and Power BI for interactive reporting.

The objective was to transform raw COVID-19 data into meaningful business-style insights by analyzing confirmed cases, deaths, recoveries, and regional trends.

Dashboard Preview
<img width="1253" height="745" alt="Dashboard-Overview" src="https://github.com/user-attachments/assets/e340d9f1-aa98-40a4-8960-0578d6abc896" />


Business Problem
Large healthcare datasets contain significant amounts of information that are difficult to interpret without proper analysis and visualization.

This project was developed to:

Analyze global COVID-19 trends
Monitor confirmed cases and fatalities
Compare countries and WHO regions
Present information through an interactive dashboard
Project Objectives
Perform exploratory data analysis using SQL
Develop KPI-based reporting
Build an interactive Power BI dashboard
Visualize regional COVID-19 impact
Extract actionable insights from healthcare data
Tools & Technologies
Category	Technology
Data Analysis	SQL
Database	MySQL
Dashboarding	Power BI
Visualization	Power BI
Reporting	Power BI
Key Performance Indicators (KPIs)
KPI	Value
Total Confirmed Cases	16 Million
Total Deaths	654 Thousand
Total Recovered	9 Million
Dashboard Features
1. Confirmed Cases by Country
Countries analyzed include:

United States
Brazil
India
Russia
South Africa
This visual helps identify the countries with the highest confirmed case counts.

2. WHO Region Analysis
COVID-19 cases are compared across WHO regions:

Americas
Europe
South-East Asia
Eastern Mediterranean
Africa
Western Pacific
3. Regional Distribution
A pie chart visualizes the percentage contribution of each WHO region to total confirmed cases.

SQL Analysis
The SQL script performs the following analyses:

Total Confirmed Cases
SELECT SUM(Confirmed) AS Total_Cases
FROM country_wise_latest;
Total Deaths
SELECT SUM(Deaths) AS Total_Deaths
FROM country_wise_latest;
Total Recovered Cases
SELECT SUM(Recovered) AS Total_Recovered
FROM country_wise_latest;
Countries with Highest Weekly Increase
SELECT `Country/Region`, `1 week change`
FROM country_wise_latest
ORDER BY `1 week change` DESC
LIMIT 10;
WHO Region Wise Cases
SELECT `WHO Region`,
       SUM(Confirmed) AS Total_Cases
FROM country_wise_latest
GROUP BY `WHO Region`;
Key Insights
Geographic Insights
The Americas region recorded the highest number of confirmed COVID-19 cases.
Europe ranked second in total confirmed cases.
Significant differences exist between WHO regions.
Country-Level Insights
The United States showed the highest confirmed case count within the dashboard.
Brazil and India were among the most affected countries included in the analysis.
Project Structure
COVID-19-Analysis
│
├── README.md
├── Covid_Project_Analysis.pbix
├── Covid_Project_Analysis.sql
│
└── Screenshots
    └── Dashboard-Overview.png
How to Run
SQL
Create database:
CREATE DATABASE covid_project;
Import healthcare dataset.

Execute SQL script.

Power BI
Open Covid_Project_Analysis.pbix
Refresh data if required.
Interact with dashboard visuals.
Future Improvements
Vaccination analysis
Recovery rate trends
Additional dashboard pages
Real-time API integration
Time-series forecasting
Author
Zeel Mistry

Aspiring Data Analyst | Power BI Developer | SQL Analyst | Data Engineering Enthusiast
