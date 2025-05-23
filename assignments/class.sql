JOINS:
INNER JOIN: 

SELECT * FROM bank_info;
select * from cust_info;

select * from tab1 inner join
tab2 on tab1.column = tab2.column;



select distinct b.bank_id, c.bank_id,l.bank_id,i.bank_id from bank_info b inner join
cust_info c on b.bank_id = c.bank_id
inner join loan_info l on l.bank_id = c.bank_id
inner join insurance_info i on i.bank_id = l.bank_id;

LEFT JOIN:

select * from bank_info b left join
cust_info c on b.bank_id = c.bank_id
inner join loan_info l on l.cust_id = c.cust_id;

Right join:

select * from bank_info b right join
cust_info c on c.bank_id = b.bank_id
inner join loan_info l on l.bank_id = c.bank_id;

cross join: Cartesian product.
select * from bank_info, cust_info,loan_info,insurance_info;

FULL join: 
SELECT * FROM bank_info b left join
cust_info c on c.bank_id = b.bank_id
union
select * from bank_info b right join
cust_info c on c.bank_id = b.bank_id;




set opeartors:

1)union:

select bank_id from bank_info
union
select bank_id from cust_info;
union
select bank_id from loan_info;

2)union all

select bank_id from bank_info
union all
select bank_id from cust_info;

3) intersect



enum:Enumeration

CREATE TABLE food_info(id int auto_increment primary key,
food_name varchar(20), 
food_type enum('veg','nonveg','seafood'),
price int) auto_increment = 1000;

select * from food_info;

insert into food_info(food_name,food_type,price)
values('pizza','veg',300);

insert into food_info(food_name,food_type,price)
values('friedRice',1,200);

insert into food_info(food_name,food_type,price)
values('Biriyani',3,600);





