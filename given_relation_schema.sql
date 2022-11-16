-- 8) For the given relation schema: employee(employee-name, street, city) 
-- works (employee-name, company-name, salary) 
-- company (company-name, city) 
-- manages (employee-name, manager-name)
--  Give an expression in SQL for each of the following queries: 
 
-- a) Find the names, street address, and cities of residence for all employees who work for same company and earn more than $10,000.

select employee.employee-name, employee.street , employee.city from employee, works where employee.employee-name=works.employee-name and company-name = ' Fir st Bank Cor por at ion' and salar y > 10000)

-- b) Find the names of all employees in the database who live in the same cities as the companies for which they work.
select e.employee-name from employee, worksw, companyc where e.employee-name = w.employee-name and e.city = c.cit y and w.company-name = c.company-name

-- c) Find the names of all employees who earn more than the average salary of all employees of their company. Assume that all people work for at most one company.
select employee-name f r om wor ks t wher e salar y >(select avg(salar y) f r om wor ks s wher e t .company-name = s.company-name)
