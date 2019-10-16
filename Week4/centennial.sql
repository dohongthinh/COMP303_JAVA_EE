Create database centennial;
use centennial;
create table Employee
(empId int PRIMARY KEY,
empName varchar(30),
jobTitle varchar(30),
salary decimal(9,2));

use centennial;
insert into Employee values(2122,'John','Professor',75000);
insert into Employee values(2123,'Max','Manager',88000.00);
insert into Employee values(2124,'Ann','Professor',95000);
insert into Employee values(2125,'Mike','Manager',72000);

use centennial;
CREATE TABLE Department(
    deptId SMALLINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    deptName varchar(30) NOT NULL,
    empId int NOT NULL,
    FOREIGN KEY(empId) REFERENCES Employee(empId)
);

insert into Department (deptName,empId) values('Admin',2123);
insert into Department (deptName,empId) values('Admin',2125);
insert into Department (deptName,empId) values('Business',2122);
insert into Department (deptName,empId) values('Business',2124);

UPDATE Employee SET salary=salary+(salary*.05) WHERE empId=2123;

SELECT * FROM Employee;
SELECT empId, empName FROM Employee;
SELECT * FROM Employee WHERE empName like "M%";
SELECT jobTitle, MAX(salary) AS SALARY FROM Employee GROUP BY jobTitle;
SELECT * FROM Employee ORDER BY salary;
SELECT deptname, count(empId) FROM Department GROUP BY deptName;
SELECT deptName, avg(salary) FROM Employee e, Department d WHERE e.empId=d.empId GROUP BY deptName;