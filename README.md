# Pewlet Hackard Analysis

## Overview of the analysis:
The purpose for this analysis was help determine and identify the number of employees retiring by position title, and also identify employees who are eligible for participating in the company's mentorship program.

## Results:
- Based on the company's data from varies csv files imported into Postgres11 Database, I was able to build Entity Relationship Diagram (ERD) which would allow import data tables to join on identified Primary Key(s) and Foregin Key(s) improving the abilities of writing Structured Query Language (SQL) query statements for further analysis.
               
  ![EmployeeDB](https://user-images.githubusercontent.com/92836648/146655638-31da4d17-98f6-4b9d-bee7-2281e1d8ff0c.png)

- From the developed and build ERD process the relationships allow for table joins that help determine further analysis from 4 query statements as followed:

  - Created retirement_titles table from joining employees and titles tables then filter out for employee birth date between 1952 to 1955.

    ![retirement_titles](https://user-images.githubusercontent.com/92836648/146655820-2e96eba2-c41b-4897-9ce9-7941392186b6.png)
    
  - Created unique_titles table from retirement_titles table filtering for employees who could eligible for retirement in the future.

    ![unique_titles](https://user-images.githubusercontent.com/92836648/146655821-78fdb71b-df08-455d-b455-c5f0c46300ba.png)

  - Created retiring_titles table based on employee count by title who are eligible for retirement in the future.

    ![retiring_titles_by_count](https://user-images.githubusercontent.com/92836648/146655823-e0454c82-f780-49f0-922f-1b19e1322519.png)
    
  - Created mentorship_eligibility table to identify employess who are eligible for retirement in the future.

    ![mentorship_eligibility](https://user-images.githubusercontent.com/92836648/146655824-7afc344f-00ef-40e5-9b2a-55a6865458a6.png)

## Summary:
From the analysis information based on 72,458 employees that could retire at any given moment, it appears from the 1,940 mentorship employees that there's not enough retiring employees qualified to mentor the next generation.

  ![retiring_titles_by_count](https://user-images.githubusercontent.com/92836648/146655823-e0454c82-f780-49f0-922f-1b19e1322519.png)
  
  ![mentorship_eligibility_count](https://user-images.githubusercontent.com/92836648/146655828-543c8edc-ea65-455c-9e4e-d9aeda779135.png)
  
Best strategy based on the numbers who be to adjust the coding to identify groups based retirement eligible through the next 20 years and back into upcoming_10_yrs_retiring_eliblility and 10_20_yrs_retiring_eligiblity to alloww focus on the next group help pass the best practice and knowledge down through a cascade effect.
