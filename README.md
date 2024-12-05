# Retention-Cohort-Churn-Analysis

For this project, here is the **Task Description:**

## Background Story:
I assume the role of a product analyst in an E-commerce company.

I got a task from my product manager to give stats on how **subscriptions churn** looks like from a weekly retention standpoint. 

The PM argues that to view retention numbers on a monthly basis takes too long and important insights from data might be missed out.

Then I realized that **cohorts analysis** can be really helpful in such cases. 

## Project Objective:
I am to provide weekly subscriptions data that shows how many subscribers started their subscription in a particular week and how many remain active in the following 6 weeks. 

The end result shows weekly retention cohorts for each week of data available in the dataset and their retention from week 0 to week 6. 

_**Note: I assume that I am doing this analysis on 2021-02-07.**_

## Data Source: 
I used the `subscription` dataset in Bigquery.

I wrote SQL queries that would extract data from the BigQuery, and created effective visualizations to communicate important findings.

* Please find the queries in [this file](cohort.sql) and the visualizations in [powerBI file](Cohort_Analysis.pbix)

