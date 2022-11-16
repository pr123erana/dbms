-- 1) Consider the relation employee (emp_id,e_name,salary ,Date of Joining,Dapt_no,Designation) perform basic SQL operations.
    -- 1. Create table employee.
       create table employee (emp_id int ,e_name varchar(30),salary int,Date_of_Joining date,Dapt_no int ,Designation varchar(30));
    -- 2. Insert 10 records in table.
       insert into employee values(1, "Mario", 5000, '2022-10-02',22,"Developer"),(2,"John",6000,'2022-12-02',23,"Tester");
       insert into employee values(1, "Mario", 5000, '2022-10-02',22,"Developer"),(2,"John",6000,'2022-12-02',23,"Tester");
    -- 3. Create a view emp_vl of table employee which  has emp_id , name and dept-attributes.
    -- 4. Create view of table.
    create view emp_vl as select emp_id, e_name, Dapt_no from employee;
    -- 5. Update dept of any employee in view. Check whether it  gets updated or not.
       update emp_vl set Dapt_no = 55 where emp_id =1;
    -- 6. Create emp_id as primary key and show indices on table employee.
       alter table employee modify emp_id int primary key;
    -- 7. Show indices on table.
           	show indexes from employee;
    -- 8. Create user defined index on any column. 
       create index myind on employee(e_name);