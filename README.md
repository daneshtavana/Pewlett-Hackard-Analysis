# Pewlett-Hackard-Analysis

### In this module we create a relational database for Pewlett-Hackard employees. An ERD graph establishes the relationship between six different CSV files, each containing differnt employee information.

### URL Link: Image of the ERD created when mapping out the Pewlett=Hackard employee database 
https://github.com/daneshtavana/Pewlett-Hackard-Analysis/blob/master/EmployeeDB.png

### After creating the graph, SQL PGAdmin too was used to create SQL Tables and import CSV files. Various SQL queries were written to provide managemnt with the necessary reports and recommendations for staff retirement planning. 

# Challenge Problem

## Create two Technical Reports

### 1) The Number of Retiring Employees by Title -- A table showing number of tiles retiring, one showing number of employees with each title, and one showing a list of current employees born between Jan. 1, 1952 and Dec. 31, 1955.
Two intermediate TABLES were created FROM "current_emp"; 
the first TABLE "retiring_emp_titles" was the JOINED "current_emp" with "titles" and 
the second TABLE "retiring_emp_titles_salaries" was the JOINED "retiring_emp_titles" with "salaries" 
Finally, duplicates where removed after searching Google for a novel code to achive this. 
 
### URL Link: The SQL code and CSV file for obtaining the final list is located in 
https://github.com/daneshtavana/Pewlett-Hackard-Analysis/blob/master/Queries/queries_challenge.sql
https://github.com/daneshtavana/Pewlett-Hackard-Analysis/blob/master/Data/final_retiring_emp_list.csv

### 2) And employees who are eligible for the mentorship program 
