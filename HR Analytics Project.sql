-- ============================================
-- HR ANALYTICS SQL PROJECT
-- Dataset table name: hr_analytics
-- ============================================

-- Rename Table
RENAME TABLE `hr_analytics (1)` TO hr_analytics;

-- 1. Preview the data
SELECT *
FROM hr_analytics
LIMIT 10;

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 2. Count total employees

SELECT COUNT(*) AS total_employees
FROM hr_analytics;


-- 3. Count employees by attrition status

SELECT 
    Attrition,
    COUNT(*) AS employee_count
FROM hr_analytics
GROUP BY Attrition;

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 4. Overall attrition rate

SELECT 
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_percentage
FROM hr_analytics;

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 5. Attrition by department

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

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 6. Attrition by job role

SELECT 
    JobRole,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_percentage
FROM hr_analytics
GROUP BY JobRole
ORDER BY attrition_rate_percentage DESC;

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 7. Attrition by age group

SELECT 
    AgeGroup,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_percentage
FROM hr_analytics
GROUP BY AgeGroup
ORDER BY AgeGroup;

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 8. Attrition by gender

SELECT 
    Gender,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_percentage
FROM hr_analytics
GROUP BY Gender
ORDER BY attrition_rate_percentage DESC;

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 9. Attrition by overtime

SELECT 
    OverTime,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_percentage
FROM hr_analytics
GROUP BY OverTime
ORDER BY attrition_rate_percentage DESC;

-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 10. Average monthly income by attrition status

SELECT 
    Attrition,
    ROUND(AVG(MonthlyIncome), 2) AS average_monthly_income
FROM hr_analytics
GROUP BY Attrition;

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 11. Attrition by salary slab

SELECT 
    SalarySlab,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_percentage
FROM hr_analytics
GROUP BY SalarySlab
ORDER BY attrition_rate_percentage DESC;

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 12. Attrition by job satisfaction

SELECT 
    JobSatisfaction,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_percentage
FROM hr_analytics
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 13. Attrition by work-life balance

SELECT 
    WorkLifeBalance,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_percentage
FROM hr_analytics
GROUP BY WorkLifeBalance
ORDER BY WorkLifeBalance;

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 14. Attrition by business travel

SELECT 
    BusinessTravel,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_percentage
FROM hr_analytics
GROUP BY BusinessTravel
ORDER BY attrition_rate_percentage DESC;

-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 15. Average years at company by attrition status

SELECT 
    Attrition,
    ROUND(AVG(YearsAtCompany), 2) AS average_years_at_company,
    ROUND(AVG(TotalWorkingYears), 2) AS average_total_working_years
FROM hr_analytics
GROUP BY Attrition;

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT 
    MaritalStatus,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_percentage
FROM hr_analytics
GROUP BY MaritalStatus
ORDER BY attrition_rate_percentage DESC;

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 17. Attrition by education field

SELECT 
    EducationField,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_percentage
FROM hr_analytics
GROUP BY EducationField
ORDER BY attrition_rate_percentage DESC;

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 18. Average income by department

SELECT 
    Department,
    ROUND(AVG(MonthlyIncome), 2) AS average_monthly_income
FROM hr_analytics
GROUP BY Department
ORDER BY average_monthly_income DESC;

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

ALTER TABLE hr_analytics
RENAME COLUMN `ï»¿EmpID` TO EmpID;

-- 19. Employees with overtime and low job satisfaction

SELECT 
    EmpID,
    Age,
    Department,
    JobRole,
    MonthlyIncome,
    OverTime,
    JobSatisfaction,
    WorkLifeBalance,
    YearsAtCompany,
    Attrition
FROM hr_analytics
WHERE 
    OverTime = 'Yes'
    AND JobSatisfaction <= 2
ORDER BY MonthlyIncome ASC;

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 20. High-risk employee segment

SELECT 
    EmpID,
    Age,
    AgeGroup,
    Department,
    JobRole,
    MonthlyIncome,
    SalarySlab,
    OverTime,
    JobSatisfaction,
    WorkLifeBalance,
    YearsAtCompany,
    Attrition
FROM hr_analytics
WHERE 
    OverTime = 'Yes'
    AND JobSatisfaction <= 2
    AND WorkLifeBalance <= 2
ORDER BY MonthlyIncome ASC;

-- ===================================================================================================================================================================================