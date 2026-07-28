# Employee-Database-Management-System-Using-MySQL

This project presents the development of an Employee Database Management System using MySQL, highlighting database schema design, DDL operations, and the use of SQL constraints for efficient data management.

## 📌 Project Overview

The **Employee Database Management System** is a relational database project developed using **MySQL** to efficiently store, organize, and manage employee-related information.

This project focuses on designing a well-structured database using **Data Definition Language (DDL) commands** and implementing **SQL constraints** to maintain data accuracy, consistency, and integrity.

The database consists of **Employees, Departments, and Locations** tables with relationships established using **Primary Keys** and **Foreign Keys**. Various constraints such as **PRIMARY KEY, FOREIGN KEY, NOT NULL, UNIQUE, CHECK, and DEFAULT** are applied to enforce business rules and ensure reliable data management.

---

# 🎯 Project Objective

The main objectives of this project are:

- Design a structured relational database for managing employee information.
- Create database tables using MySQL DDL commands.
- Implement constraints to maintain data integrity and consistency.
- Establish relationships between tables using Primary Keys and Foreign Keys.
- Apply validation rules using SQL constraints.
- Reduce data redundancy through proper database design.
- Understand fundamental concepts of relational database management systems.

---

# 📝 Problem Statement

Organizations need an efficient way to store and manage employee information such as employee details, department assignments, locations, and salary information.

Managing employee records without a structured database can lead to:
- Duplicate records
- Missing information
- Data inconsistency
- Difficulty maintaining relationships between data

This project solves these challenges by designing a normalized relational database system using MySQL with proper table relationships and constraints.

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

---

# 🛠️ Tools & Technologies

- **Database:** MySQL
- **Language:** SQL
- **Concepts Used:**
  - DDL Commands
  - Constraints
  - Relational Database Design
  - Data Integrity
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

# 📚 Key Learnings

- Understanding relational database design.
- Creating and modifying tables using DDL commands.
- Applying SQL constraints for data validation.
- Managing relationships using primary and foreign keys.
- Improving data consistency and integrity.

---

# ✅ Conclusion

The **Employee Database Management System using MySQL** demonstrates the practical implementation of relational database concepts, DDL operations, and SQL constraints.

This project provides hands-on experience in database schema creation, table relationships, and data validation techniques. It serves as a foundation for understanding real-world database management systems and enterprise data organization.

---

# 👩‍💻 Author

**Shanthini **

**Skills:** MySQL | SQL | Database Design | Data Management
