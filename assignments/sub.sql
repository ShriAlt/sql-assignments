ONE TO ONE:

CREATE TABLE course_info(course_id int primary key, course_name varchar(20));




select * from course_info;
select * from student_info;


select * from department_info;
select * from employee_info;

SUBQUERIES:

SELECT * FROM bank_info;bank_id
select * from cust_info;bank_id, cust_id
select * from loan_info;loan_id,cust_id
select * from insurance_info;loan_id

delete from bank_info where bank_id in 
(select bank_id from cust_info where cust_id in 
(select cust_id from loan_info where loan_id in 
(select loan_id from insurance_info where insurance_name = 'Health Insurance')))
and id = 10;
update bank_info set no_of_cust = 1111 where bank_id =
(select bank_id from cust_info where cust_id = 
(select cust_id from loan_info where loan_name = 'agricultureloan'));


select * from bank_info where bank_id = 301;

update bank_info set loan_amount = 20000 where bank_id = 
(SELECT bank_id from cust_info where cust_name = 'Akshar')
and id = 1;


select * from bank_info where bank_id in
(select bank_id from cust_info where cust_id in 
(select cust_id from loan_info where loan_id in 
(select loan_id from insurance_info where insurance_name = 'Health Insurance')));





select bank_name from bank_info where bank_id in
(select bank_id from cust_info where cust_id in  
(select cust_id from loan_info where loan_name = 'Goldloan'));


select * from bank_info where bank_id = 
(select bank_id from cust_info where cust_id = 603);


select bank_name from bank_info where bank_id = 
(SELECT bank_id from cust_info where cust_name = 'Akshar');


select bank_name from bank_info where bank_id in
(select bank_id from cust_info where cust_id = 601);


select * from bank_info;
select * from bank_info_dup;
update bank_info set no_of_cust = 999 where id = 1;
CREATE TABLE bank_info_dup as select * from bank_info;

views:

create view bank_view as select id,bank_id,no_of_cust
from bank_info;

select * from bank_view;



