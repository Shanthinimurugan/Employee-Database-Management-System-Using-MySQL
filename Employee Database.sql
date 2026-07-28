											-- EMPLOYEE DATABASE
											-- 1. Database and Table Creation (CREATE):
                                            -- Create a Database
 create database if not exists employee_db; 
 
use employee_db; 

											-- A. DDL Commands
                                            -- 1. Department table creation
                                            
 create table if not exists departments(
 department_id int,
 department_name varchar(100),
 
 Primary Key (department_id)
 );
desc departments;
											-- 2. Location table creation
 
 create table if not exists location(
 location_id int primary key,
 location_name varchar(30)
 );
 desc location;
 
											-- 3. Employees table creation
                                            
create table if not exists employees(
employee_id int,
employee_name varchar(50),
gender enum ('M','F'),
age int,
hire_date date,
designation varchar(100),
salary decimal (10,2),
department_id int,
location_id int,

Primary key (employee_id),

foreign key (department_id) references departments (department_id)
on delete cascade
on update cascade,

foreign key (location_id) references location (location_id)                                          
on delete cascade
on update cascade
);
 desc employees;

											-- 2. Table Alteration (ALTER):
                                            -- Add a new column named "email"
                                            
alter table employees add column email varchar(100); 

											-- Modify the data type of the "designation" column
                                            
 alter table employees modify designation varchar(200);   
 
											-- Drop the “age” column
                                            
 alter table employees drop age;  
 
											-- Rename the “hire_date” column to “date_of_joining”
                                            
alter table employees change hire_date date_of_joining date; 
desc employees;       

											-- 3. Table Renaming (RENAME):
                                            -- Rename the "Departments" table to "Departments_Info"
                                            
 Rename table departments to departments_info;
 desc departments_info;	
 
											-- Rename the "Location" table to "Locations"
                                            
 Rename table location to locations; 										
desc locations;										
											-- 4. Table Truncation (TRUNCATE): 
                                            -- Truncate the Employees table

truncate table employees; 
select * from employees;                                           
                                            -- 5. Database & Table Dropping (DROP):
                                            -- Drop the Employees table and then the “employee” database
                                            
 drop table employees;
 drop database employee_db;
 
											-- B. Add Constraints
                                            -- 1. Database Recreation:
                                            
create database if not exists employee_db; 
use employee_db;                                           
 
											-- 2. Departments Table:
                                            -- Set up constraints on the "department_name" to avoid duplicate and null entries
                                            
alter table departments_info
modify department_name varchar(100) Not Null;                                         

alter table departments_info
add constraint uq_departmentname
unique (department_name);

desc departments_info;										
                                
											-- 3. Locations Table:
                                            -- create incremented sequential for location_id
ALTER TABLE employees
DROP FOREIGN KEY employees_ibfk_2;

alter table locations
modify location_id int auto_increment;  

ALTER TABLE employees
ADD CONSTRAINT employees_ibfk_2
FOREIGN KEY (location_id)
REFERENCES locations(location_id);

											-- Set up constraints on the "location_name" to avoid null and duplicate locations
                                            
alter table locations
modify location_name varchar(30) Not Null;                                         

alter table locations
add constraint uq_locationname
unique (location_name);

desc locations;                    

											-- 4. Employees Table:
                                            --  ensure that the employee's name is always provided
                                            
alter table employees
modify employee_name varchar(50) Not Null;   

											-- Set "gender" field to only 'M' or 'F'  
                                            
ALTER TABLE Employees
ADD CONSTRAINT chk_gender
CHECK (gender IN ('M', 'F'));                                           
                       
											--  ensure that the employee's age is 18 or above
                                            
alter table employees add column age int check (age >= 18);

											-- Automatically assign the current date to the "date_of_joining" field if not specified
                                            
alter table employees 
modify date_of_joining date default (current_date()); 

desc employees;                                         
                                       
