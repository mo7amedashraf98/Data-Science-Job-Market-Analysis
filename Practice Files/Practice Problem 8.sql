/* 
Practice Stat: 
    Find jobs postings from the 1st quarter that have a salary greater than 70k $: 
        - Combine job postings table from the 1st quarter of 23' 
        - Get postings with an average yearly salary 70K $
*/

SELECT 
    job_location,
    job_title_short,
    job_via,
    salary_year_avg,
    job_posted_date ::date
FROM (
    SELECT *
    FROM january_jobs
    UNION ALL
    SELECT *
    FROM february_jobs
    UNION ALL
    SELECT * 
    FROM march_jobs
) AS quarter1_job_postings

WHERE salary_year_avg > 70000;
