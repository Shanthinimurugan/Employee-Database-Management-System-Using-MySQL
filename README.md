# Employee-Database-Management-System-Using-MySQL

This project presents the development of an Employee Database Management System using MySQL, highlighting database schema design, DDL operations, and DML operations for efficient data management.

## 📌 Project Overview

The Employee Database Management System is a relational database project developed using MySQL to efficiently store, organize, and manage employee-related information.

The project focuses on designing a structured and reliable database using DDL commands, SQL constraints, clauses, aggregate functions, joins, and window functions. It demonstrates how relational databases can be designed to maintain data accuracy, consistency, integrity, and minimize data redundancy.

The database consists of three main tables:
Departments
Locations
Employees

Relationships between the tables are established using Primary Keys and Foreign Keys, while constraints such as NOT NULL, UNIQUE, CHECK, and DEFAULT are used to enforce business rules.

# 🎯 Project Objective

Organizations need an efficient way to store and manage employee information such as employee details, departments, locations, salaries, and other related data. Managing this information without a properly structured relational database can lead to data duplication, missing values, inconsistent records, and difficulties in retrieving useful information.

This project addresses these challenges by developing an Employee Database Management System using MySQL. The system organizes employee-related data into normalized tables with appropriate primary keys, foreign keys, and SQL constraints to ensure data accuracy and integrity. It also provides SQL-based operations for filtering, sorting, grouping, aggregation, joining tables, handling missing data, and performing ranking and cumulative analysis using window functions. This enables efficient data management and supports better analysis and decision-making.

---

# 📝 Problem Statement

- Design a structured relational database for employee management.
- Create and manage database tables using MySQL DDL commands.
- Implement Primary Key and Foreign Key relationships.
- Apply NOT NULL, UNIQUE, CHECK, and DEFAULT constraints.
- Maintain data integrity and consistency.
- Minimize data redundancy through database normalization.
- Perform data retrieval and analysis using SQL clauses and operators.
- Use joins to retrieve related information from multiple tables.
- Apply aggregate and window functions for employee analysis.
- Develop practical SQL skills applicable to real-world business databases.


---

# 🗂️ Database Structure

## 1. Departments Table

| Attribute | Data Type | Description |
|-----------|-----------|-------------|
| Department_id | INT (Primary Key) | Unique identifier for each department |
| Department_name | VARCHAR(100) | Name of the department |

---

## 2. Locations Table

| Attribute | Data Type | Description |
|-----------|-----------|-------------|
| Location_id | INT (Primary Key) | Unique identifier for each location |
| Location_name | VARCHAR(30) | Name of the location |

---

## 3. Employees Table

| Attribute | Data Type | Description |
|-----------|-----------|-------------|
| Employee_id | INT (Primary Key) | Unique identifier for each employee |
| Employee_name | VARCHAR(30) | Name of the employee |
| Gender | ENUM('M','F') | Employee gender |
| Age | INT | Age of the employee |
| Date_of_joining | DATE | Employee joining date |
| Designation | VARCHAR(100) | Job designation of employee |
| Department_id | INT (Foreign Key) | References Department table |
| Location_id | INT (Foreign Key) | References Location table |
| Salary | DECIMAL(10,2) | Employee salary amount |
| Email | VARCHAR(100) | Employee email address |


# 🛠️ Tools & Technologies

- **Database:** MySQL
- **Language:** SQL
- **Concepts Used:**
  - DDL Commands
  - SQL Constraints
  - Aggregate Functions
  - Joins
  - Window Functions
  - Schema Management

---

# ⚙️ Data Pre-Processing & Database Operations

## DDL Commands Implemented

### 1. CREATE
- Created Employee, Department, and Location tables.
- Defined table structures with appropriate data types.

### 2. ALTER
Performed table modifications such as:
- Added email column to Employees table.
- Modified designation column data type.
- Removed age column.
- Renamed hire_date column to date_of_joining.

### 3. RENAME
- Renamed Departments table to Departments_Info.
- Renamed Location table to Locations.

### 4. TRUNCATE
- Removed all records from the Employees table while maintaining the table structure.

### 5. DROP
- Deleted Employees table.
- Removed the Employee database.

---

# 🔐 SQL Constraints Implemented

## Departments Table
- Applied Primary Key constraint on department_id.
- Ensured department_name values are unique and not null.

## Locations Table
- Implemented auto-increment for location_id.
- Applied UNIQUE and NOT NULL constraints on location_name.

## Employees Table
Implemented:
- PRIMARY KEY → Ensures unique employee identification.
- NOT NULL → Ensures employee name cannot be empty.
- CHECK → Restricts gender values to 'M' or 'F'.
- CHECK → Ensures employee age is 18 or above.
- DEFAULT → Automatically assigns current date for joining date.

# 📊 SQL Queries & Data Analysis

### DISTINCT
- Retrieved distinct salary values from the Employees table.
* Objective: Identify unique salary amounts without duplicate values.


### ALIAS (AS)
- Used aliases to provide meaningful names for columns:
age → Employee_Age
salary → Employee_Salary
* This improves the readability of query results.

### WHERE Clause & Operators
- Salary and Joining Date Filtering
Retrieved employees who:
Earn more than ₹50,000 and hired before 2016-01-01

- Handling Missing Designations
Identified employees whose designation was missing and updated the value to:
Data Scientist

## Sorting & Limiting Data
- ORDER BY
Employees were sorted using multiple conditions:
department_id in ascending order and salary in descending order
* This demonstrates multi-column sorting.

### LIMIT
Displayed the first 5 employees hired in 2018.

# 📈 Aggregate Functions

Aggregate functions were used to summarize employee data.

- SUM()
Calculated the total salary of employees working in the Finance department.

- MIN()
Identified the minimum age among all employees.

Other aggregate functions demonstrated through the project include:

COUNT()
SUM()
AVG()
MIN()
MAX()

# 📊 GROUP BY

- Maximum Salary by Location
Calculated the maximum salary for employees in each location.

- Average Salary by Designation
Calculated the average salary for designations containing the word: Analyst

# 🔎 HAVING Clause
- Departments with Less Than 3 Employees
Identified departments having fewer than 3 employees.

- Locations with Female Employees
Identified locations where:
Employees are female
Average employee age is below 30
The HAVING clause was used to filter grouped results.

# 🔗 SQL JOINS
Different types of joins were implemented to retrieve related information.

- INNER JOIN
Retrieved:
Employee name
Designation
Department name
Only employees assigned to a department were included.

- LEFT JOIN
Displayed all departments along with the total number of employees.
Departments without employees were also included.
* This demonstrates how LEFT JOIN can preserve records from the left table.

- RIGHT JOIN
Displayed all locations along with the names of employees assigned to each location.
Locations without employees return: NULL for the employee name.

- CROSS JOIN
Generated all possible combinations between:
Departments and Locations
* This demonstrates a Cartesian product between two tables.

- SELF JOIN
Compared employees within the same table to identify pairs of employees working in the same department.
* Self-pairs were excluded from the result.

# 🪟 Window Functions

Window functions were used for advanced employee salary analysis without collapsing individual employee records.

- RANK()
Ranked employees based on salary.
Employees with the same salary receive the same rank, with gaps appearing after ties.

- DENSE_RANK()
Ranked employees by salary within each department.
This allows salary rankings to be analyzed separately for every department.

- Running Total
Calculated the running total of salary within each department using a window function.

This demonstrates how window functions can be used for cumulative analysis while retaining individual employee records.

---

# 📂 Project Files

```
Employee-Database-Management-System/
│
├── README.md
│
├── SQL_Scripts/
│   ├── Database_Creation.sql
│   ├── Alter_Commands.sql
│   ├── Constraints.sql
│
└── Document of Screenshots/
    └── SQL_Execution_Results/
```

---

💡 Key Learning Outcomes

- Through this project, I gained practical experience in:
- Designing relational database schemas.
- Creating and modifying MySQL tables.
- Implementing primary and foreign key relationships.
- Applying SQL constraints for data validation.
- Managing database objects using DDL commands.
- Filtering and sorting employee records.
- Performing grouped data analysis.
- Using aggregate functions for business insights.
- Combining data using different types of joins.
- Handling missing data using SQL updates.
- Applying window functions for ranking and cumulative analysis.
- Understanding database normalization and data integrity.

🚀 Future Enhancements

* The project can be further enhanced by adding:
* Employee attendance management
* Leave management
* Payroll management
* Performance tracking
* Employee promotion history
* Department-wise salary analysis
* Stored Procedures
* User-Defined Functions
* Views
* Triggers
* Indexing for query optimization

🏁 Conclusion

The Employee Database Management System demonstrates how MySQL can be used to design, manage, and analyze a structured relational database.

The project covers essential SQL concepts including DDL commands, constraints, filtering, sorting, grouping, aggregate functions, joins, and window functions. By implementing these concepts, the database maintains data integrity while providing a strong foundation for employee-related data management and analysis.

This project strengthened my practical understanding of MySQL database design and SQL querying and provided hands-on experience in applying SQL concepts to a real-world business scenario.

---

# 👩‍💻 Author

**Shanthini **

**Skills:** MySQL | SQL | Database Design | Data Management

## 📄 License

This project is created for educational and assignment purposes only.

## 🙏 Acknowledgments

I would like to thank:

- **Entri Elevate Course Support** for providing guidance and learning resources throughout this project.
- **MySQL Documentation** for valuable references and support in understanding SQL commands, database design, and implementation.
