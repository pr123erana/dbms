-- 3)Consider the relation employee(emp_id,e_name,salary ,Date of Joining,Dapt_no,Designation) perform basic SQL operations.
   --  1. Find department in which maximum employees work.
       
   --  2.  Display name, designation and department no of employees whose name starts with either ‘A’ or ‘P’.
       select e_name, designation from emp1 where Dapt_no in (select Dapt_no from emp1 group by Dapt_no having e_name like "a%" or e_name like "p%");
   --  3.  Display max. salary from department 2 and min. salary from department 4.
       select max(salary), min(salary) from emp1 group by Dapt_no;
   --  4.  Display employee data where salary is less than average salary from department 3.
       SELECT * FROM emp1  WHERE salary <  ALL(SELECT avg(salary) FROM emp1);
   --  5.  Display employees who were hired earliest or latest.
        select * from emp1 order by Date_of_Joining desc;
   --  6. Display name and department no of employees who are manager, market analysts. Use prediactes
   --  7. List employees hired in August.
       select * from emp1 where Date_of_Joining between '2022-08-01' and '2022-08-31';
   --  8.  List employees who are hired after 31/12/2006.
       select * from emp1 where Date_of_Joining > '2006-12-31';
   --  9.  Find average annual salary per department.
       select avg(salary) from emp1 group by Dapt_no;