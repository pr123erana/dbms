-- 2) Consider the relation employee (emp_id,e_name,salary ,Date of Joining,Dapt_no,Designation) perform basic SQL operations.
   --  1. Display employees whose name contains letter ‘e’.
select e_name from employee where e_name like "%e%";
   --  2. Display different types of designation
select distinct designation from employee;
   --  3. Display name and salary of employee whose location is Mumbai
       select e_name, salary from employee where location="Mumbai";
   --  4. Display name and department of employee working in Manager or Marketing department
       select e_name, Department from employee where Designation="Manager" OR Department="Marketing";
   --  5. Display the department name whose employees are more than one
       select e_name, department from employee where department in (select department from employee group by department having count(*)>1);
   --  6. Rename employee table as emp1
       alter table employee rename emp1;
   --  7. Add a new column city in the employee table.
       alter table emp1 add city1 varchar(30) not null;
