# Top Paying Remote Data Analyst Jobs & Skills Analysis

## Project Overview

This repository contains a set of SQL scripts that analyze remote “Data Analyst” job postings to identify:

- The top 10 highest-paying roles (anywhere-remote).
- The key skills required by those top-paying roles.
- The five most in-demand skills for work-from-home Data Analysts.
- The average salary associated with each skill.
- An “optimal skills” list combining demand and salary metrics.

By centralizing these insights, job seekers and career coaches can tailor their upskilling roadmap to maximize both employability and earning potential.

---

## Data Model & Tables

All queries assume a star/snowflake schema with the following tables:

- **job_postings_fact**  
  Contains one row per job posting, including:
  - `job_id`, `job_title`, `job_title_short`, `job_location`, `job_schedule_type`
  - `salary_year_avg`, `job_posted_date`, `job_work_from_home` (BOOLEAN)
  - `company_id` foreign key

- **company_dim**  
  Lookup table for companies:
  - `company_id`, `name` AS `company_name`

- **skills_dim**  
  Lookup table for skills:
  - `skill_id`, `skills`

- **skills_job_dim**  
  Bridge table between jobs and skills:
  - `job_id`, `skill_id`

---

## Prerequisites

1. A SQL engine (e.g. PostgreSQL, SQL Server, Snowflake) with all four tables loaded.
2. A user with read access to these tables.
3. (Optional) A BI tool (Power BI, Tableau) for visualizing result sets.

---

## Directory Structure

```txt
.
├── sql/
│   ├── 01_top_paying_jobs.sql
│   ├── 02_top_paying_job_skills.sql
│   ├── 03_top_demanded_skills.sql
│   ├── 04_top_paying_skills.sql
│   └── 05_optimal_skills.sql
└── README.md
