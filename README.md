# HR-Attrition-Analysis


### Table of Contents
- [Project Overview](#project-overview)
- [Business Problem](#business-problem)
- [Objectives](#objectives)
- [Dataset Information](#dataset-information)
- [Data Cleaning](#data-cleaning)
- [Key Analysis Performed](#key-analysis-performed)
- [Key Insights](#key-insights)


### Project Overview
This project looks into employee attrition trends using SQL in MySQL. The analysis focuses on identifying the factors that contribute to employee turnover and discovering high-risk employee groups within the organization.


### Business Problem
Employee attrition can negatively affect productivity, morale, recruitment costs, and overall business performance.

This project aims to answer questions such as:
- Which departments have the highest attrition?
- Does overtime increase employee turnover?
- How does salary affect attrition?
- Which employee groups are most at risk?
- How do job satisfaction and work-life balance influence retention?


### Objectives
- Analyze employee attrition patterns
- Identify high-risk employee segments
- Compare attrition across departments and job roles
- Explore relationships between overtime, salary, and employee satisfaction
- Generate actionable business insights using SQL


### Dataset Information
The dataset contains HR-related employee information including:
- Employee ID
- Age
- Department
- Job Role
- Attrition
- Salary Information
- Overtime
- Job Satisfaction
- Work-Life Balance
- Education
- Business Travel
- Years at Company


### Data Cleaning
Several data cleaning steps were performed:

1. Renamed the table from:

  ```sql
hr_analytics (1)
```

to :

```sql
hr_analytics
```


2. Fixed a corrupted column name:
   
   ```sql
   ï»¿EmpID
   ```

  renamed to:

  ```sql
  EmpID
  ```


### Key Analysis Performed
1. Employee Overview
   - Total employee count
   - Attrition count and attrition rate


2. Department Analysis
   - Attrition by department
   - Average salary by department


3. Employee Satisfaction Analysis
   - Job satisfaction trends
   - Work-life balance analysis

  
4. Compensation Analysis
   - Attrition by salary slab
   - Average monthly income comparison
  

5. Workforce Behavior Analysis
   - Overtime vs attrition
   - Business travel analysis


6. Demographic Analysis
   - Attrition by gender
   - Attrition by age group
   - Attrition by marital status
  
7. Risk Identification
   - Identification of employees at higher risk of leaving

  
8. Example SQL Query
  
```sql
SELECT 
    Department,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_percentage
FROM hr_analytics
GROUP BY Department
ORDER BY attrition_rate_percentage DESC;
```


### Key Insights
- Employees working overtime showed higher attrition rates
- Certain departments experienced significantly higher turnover
- Lower job satisfaction correlated with increased attrition
- Employees with lower work-life balance scores were more likely to leave
- Salary and compensation patterns influenced retention
