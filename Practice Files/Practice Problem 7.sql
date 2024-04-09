/* 
Find the count of the number of remote job postings per skill: 
    - Display the top 5 skills by their demand in remote jobs
    - Include skill id, name, and count of postings requiring the skills
*/
WITH job_remote AS (
    SELECT 
        skill_id,
        COUNT(*) AS skill_count
    FROM 
        skills_job_dim AS skills_to_job
    INNER JOIN job_postings_fact AS job_postings ON skills_to_job.job_id = job_postings.job_id
    WHERE 
        job_work_from_home = True AND job_title_short = 'Data Analyst'
    GROUP BY 
        skill_id
)

SELECT 
    skills.skill_id,
    skills AS skill_name,
    skill_count
FROM 
    job_remote
INNER JOIN skills_dim AS skills ON skills.skill_id = job_remote.skill_id
ORDER BY 
    skill_count DESC
LIMIT 5;