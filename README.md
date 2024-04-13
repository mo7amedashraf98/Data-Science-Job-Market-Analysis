# Introduction 

Dive into the exciting world of the data job market with me! This project focuses on Data Scientist roles in Egypt, unveiling insights into top-paying positions, In-demand skills, and where high demand meets high salaries.

Curious to see the queries? [Check them out here](/Final%20Project/)
# Why this Project?

This project is the final project of Luke Barousse's SQL course, aiming to uncover insights about Egypt's data job market using real-world data provided by Luke. The dataset provides valuable information on job titles, salaries, locations, and essential skills.

### Question I answered through the queries: 
1. What are the top paying data jobs in the Egyptian market?
2. What are the top paying skills associated with the data scientist role?
3. What are the top demanded skills for Data Scientist role. (This question was answered using 2 different methods)
4. What are the skills associated with the highest salaries?
5. What are the optimal skills to learn?

# Tools Used 
For my analysis, I used various tools, some of which were new experiences:

- **SQL** : Serving as the cornerstone of my analysis, SQL enabled me to query the database and unveil these valuable insights.

- **PostgreSQL** : Selected as the database management system to efficiently handle and store the data.

- **Visual Studio Code**: The integrated development environment where I executed my queries and conducted analysis.

- **Git & GitHub** : Utilized for version control and sharing my queries, fostering collaboration and facilitating project management.

# The Analysis
The main goal of these queries is to uncover certain insights about the Data Scientist roles in Egypt. So let's have a deeper dive on how I approached each question and what are the uncovered inisghts.
## 1. Top Paying Data Jobs
To identify the highest paying Data Science jobs, I filtered by the average salary and location focusing on jobs in Egypt.

```sql
SELECT 
    job_id,
    job_location, 
    job_title_short,
    salary_year_avg,
    name AS company_name
FROM 
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE 
    job_location = 'Egypt' AND 
    job_title_short = 'Data Scientist' AND 
    salary_year_avg IS NOT NULL 
ORDER BY salary_year_avg DESC
LIMIT 10;
```
# Conclusion