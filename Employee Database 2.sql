									-- MySQL Assignment 2 Clauses and Joins

use employee_db; 


INSERT INTO departments_info (department_id, department_name) VALUES
(1, 'Software Development'),
(2, 'Marketing'),
(3, 'Data Science'),
(4, 'Human Resources'),
(5, 'Product Management'),
(6, 'Content Creation'),
(7, 'Finance'),
(8, 'Design'),
(9, 'Research and Development'),
(10, 'Customer Support'),
(11, 'Business Development'),
(12, 'IT'),
(13, 'Operations');

INSERT INTO locations (location_name) VALUES
('Chennai'),
('Bangalore'),
('Hyderabad'),
('Pune');

INSERT INTO employees (employee_id, employee_name, gender, date_of_joining, designation, salary, department_id, location_id, age) VALUES
(5001, 'Vihaan Singh', 'M', '2015-01-20', 'Data Analyst', 60000, 3, 4, 27),
(5002, 'Reyansh Singh', 'M', '2015-03-10', 'Network Engineer', 80000, 12, 1, 31),
(5003, 'Aaradhya Iyer', 'F', '2015-05-20', 'Customer Support Executive', 45000, 10, 2, 26),
(5004, 'Kiara Malhotra', 'F', '2015-07-05', NULL, 70000, 8, 3, 29),
(5005, 'Anvi Chaudhary', 'F', '2015-09-11', 'Business Development Executive', 55000, 11, 1, 25),
(5006, 'Dhruv Shetty', 'M', '2015-11-20', 'UI Developer', 65000, 8, 2, 28),
(5007, 'Anushka Singh', 'F', '2016-01-15', 'Marketing Manager', 90000, 2, 3, 32),
(5008, 'Diya Jha', 'F', '2016-03-05', 'Graphic Designer', 70000, 8, 4, 27),
(5009, 'Kiaan Desai', 'M', '2016-05-20', 'Sales Executive', 55000, 11, 3, 30),
(5010, 'Atharv Yadav', 'M', '2016-07-10', 'Systems Administrator', 80000, 12, 4, 29),
(5011, 'Saanvi Patel', 'F', '2016-09-20', 'Marketing Analyst', 60000, 2, 1, 28),
(5012, 'Myra Verma', 'F', '2016-11-05', 'Operations Manager', 95000, 13, 2, 26),
(5013, 'Arnav Rao', 'M', '2017-01-20', 'Customer Success Manager', 75000, 10, 3, 33),
(5014, 'Vihaan Mohan', 'M', '2017-03-10', 'Supply Chain Analyst', 60000, 10, 2, 30),
(5015, 'Ishaan Kumar', 'M', '2017-05-20', 'Financial Analyst', 85000, 7, 1, 27),
(5016, 'Zoya Khan', 'F', '2017-07-05', 'Legal Counsel', 100000, 4, 4, 31),
(5017, 'Kabir Nair', 'M', '2017-09-11', 'IT Support Specialist', 80000, 12, 2, 28),
(5018, 'Ishan Mishra', 'M', '2017-11-20', 'Research Scientist', 75000, 9, 3, 25),
(5019, 'Ishika Patel', 'F', '2018-01-15', 'Talent Acquisition Specialist', 55000, 4, 4, 29),
(5020, 'Aarav Nair', 'M', '2018-03-05', 'Software Engineer', 90000, 1, 1, 32),
(5021, 'Advik Kapoor', 'M', '2018-05-20', 'Finance Analyst', 85000, 7, 3, 26),
(5022, 'Aadhya Iyengar', 'F', '2018-07-10', 'HR Specialist', 60000, 4, 4, 28),
(5023, 'Anika Paul', 'F', '2018-09-20', 'Public Relations Specialist', 70000, 2, 2, 30),
(5024, 'Aryan Shetty', 'M', '2018-11-05', 'Product Manager', 95000, 5, 1, 27),
(5025, 'Avni Iyengar', 'F', '2019-01-20', 'Data Scientist', 100000, 3, 4, 31),
(5026, 'Vivaan Singh', 'M', '2019-03-10', 'Business Analyst', 75000, 3, 2, 29),
(5027, 'Ananya Paul', 'F', '2019-05-20', 'Content Writer', 60000, 6, 3, 32),
(5028, 'Anaya Kapoor', 'F', '2019-07-05', 'Event Coordinator', 60000, 6, 1, 26),
(5029, 'Arjun Kumar', 'M', '2019-09-11', 'Quality Assurance Analyst', 80000, 12, 2, 33),
(5030, 'Sara Iyer', 'F', '2019-11-20', 'Project Manager', 90000, 5, 1, 28);

select * from departments_info;
select * from locations;
select * from employees;

-- Clause & Operators:
										/* 1. DISTINCT VALUES:
										● A query to retrieve distinct salaries from the Employees table.*/

select distinct salary from employees;

										/* 2. ALIAS (AS):
										● Provide aliases for the "age" and "salary" columns as "Employee_Age" and "Employee_Salary", respectively.*/
                                        
 select age as Employee_Age, 
 salary as Employee_salary from employees;    
 
										 /*3. WHERE CLAUSE & OPERATORS:
										 A) Retrieve employees with a salary greater than ₹50000 and hired before 2016-01-01.*/

select * from employees 
where salary > 50000 And date_of_joining < '2016-01-01-';

										/* B) Find the employee whose designation is missing and fill it with "Data Scientist".*/

update employees
set designation = 'Data Scientist' 
where designation is null;

select * from employees;

-- Sorting and Grouping Data:
										/* 1. ORDER BY:
										● Find employees sorted by department ID in ascending order and salary in descending order.*/

select * from employees 
order by department_id Asc, salary desc;

										/* 2. LIMIT:
										● Display the first 5 employees hired in the year 2018.*/

select employee_id, employee_name, date_of_joining from employees
where year(date_of_joining) = '2018'
limit 5;

										/* 3. AGGREGATE FUNCTIONS:
										A) Calculate the sum of all salaries in the Finance department.*/
                                        
  select sum(e.salary) as TotalFinance_Emp_Salary from employees e
  join departments_info d on d.department_id = e.department_id
  where d.department_name = 'Finance';  
  

  
										/*  B) Find the minimum age among all employees.*/
                                        
 select employee_id, employee_name, age from employees 
 where age = (select min(age) from employees);                                      
  
										/* 4. GROUP BY:
										A) List the maximum salary for each location.*/
                                        
  select l.location_name, max(e.salary) as Maximum_Salary 
  from employees e
  join locations l on l.location_id = e.location_id
  group by l.location_name;

										/* B) Calculate the average salary for each designation containing the word 'Analyst'.*/

select designation, avg(salary) as Average_Salary from employees
where designation like ('%Analyst%')
group by designation;


										/* 5. HAVING:
										A) Find departments with less than 3 employees.*/
                                        
select d.department_name, count(distinct e.employee_id) as Number_of_Employees
from employees e
join departments_info d on d.department_id = e.department_id
group by d.department_name
having Number_of_Employees < 3; 

										/* B) Find locations with female employees whose average age is below 30.  */

select l.location_name, Avg(e.age) as Average_Age
from employees e
join locations l on l.location_id = e.location_id
where e.gender = 'F'
group by l.location_name
having Average_age < 30;

-- Joins:
													-- 1. INNER JOIN:
													-- List employee names, their designations, and department names where employees are assigned to a department.
select
e.employee_name,
e.designation,
d.department_name
from employees e
inner join departments_info d on d.department_id=e.department_id;



													-- 2. LEFT JOIN:
                                                    -- List all departments along with the total number of employees in each department, including departments with no employees.
                                                    
select
d.department_name,
count(e.employee_id) as Total_employees
from departments_info d
left join employees e on d.department_id=e.department_id
group by 
d.department_name;	

													-- 3. RIGHT JOIN:
                                                    -- Display all locations along with the names of employees assigned to each location. If no employees are assigned to a location, display NULL for employee name.
                                                    
select
e.employee_name,
l.location_name
from employees e
right join locations l on l.location_id=e.location_id;

													-- 4. CROSS JOIN
													-- Show all possible combinations of departments and locations
                                                    
 select d.department_name, l.location_name from departments_info d
 cross join locations l;
                             
													-- 5. SELF JOIN:
													-- Show pairs of employees working in the same department, excluding self-pairs

select 
	e1.employee_name as employee1,
    e2.employee_name as employee2,
    e1.department_id
from employees e1
join employees e2 on e1.department_id = e2.department_id
And e1.employee_id <> e2.employee_id;

-- Windows function
													-- 1) Write a window function query to rank employees by salary using rank()
                                                    
 select employee_name, salary,
Rank() over(order by salary desc) as SalaryRank
from employees;    

													-- 2) Write a window function query to rank employees by salary within each department using DENSE_RANK() 
                                                    
select 
employee_id, employee_name, department_id, salary,
dense_rank() over (partition by department_id order by salary desc) as SalaryRank
from employees;

													-- 3) Write a window function query, Running total salary by department
                                                    
select 
employee_id, employee_name, department_id, salary,
sum(salary) over (partition by department_id order by employee_id) as RunningTotal_Salary_by_dapartment
from employees;
                                                
 


   
   
   
    
                                                    
