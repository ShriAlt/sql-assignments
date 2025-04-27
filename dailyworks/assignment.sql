Create database Hostel;
create Table Hostel_detailes(id int,hostel_name varchar(30),
hostel_location varchar(30),
hostel_fees bigint,
hostel_contact_number bigint,
warden_name varchar(40),
hostel_room_number bigint,
hostel_owner_name varchar(50),
Hostel_Type varchar(50));
select * from Hostel_detailes;
create database Hostipal;
create Table Hostipal_detailes(id int,hostipal_name varchar(30),hostipal_location varchar(30),hostipal_fees bigint,hostipal_contact_number bigint,doctor_name varchar(50),hospital_ward_number bigint,hostipal_owner_name varchar(40),hospital_type varchar(50));
create database Student;
create Table Student_details(id int ,student_name varchar(45),student_contact_number bigint,student_marks bigint,student_USN varchar(30),student_depeartment varchar(70),student_location varchar(30),student_sem varchar(10),student_admission_year smallint,student_pass smallint);
create database PG;
create Table pg_detaile ( id int,pg_name varchar(30),pg_location varchar(30),pg_fees bigint,pg_contact_number bigint,pg_warden_name varchar(50),pg_room_number bigint,pg_owner_name varchar(50),pg_Type varchar(50));
create database car;
use car;
create Table car_detailes(id int,car_name varchar(30),car_color varchar(20),car_model smallint,car_company varchar(30),car_setter smallint,car_price bigint,car_owner_name varchar(40),car_number_owner smallint,car_RC_number varchar(20));
drop table pg_detailes;


select * from  Hostel_detailes;
select * from Hostipal_detailes;
/* to add the coloum to table*/
Alter Table Hostel_detailes Add (Student1_name varchar(100),Student2_name varchar(200),Student3_name varchar(200),Student4_name varchar(200));
Alter Table Hostipal_detailes Add (patient1_name varchar(100),patient2_name varchar(100),patient3_name varchar(100),patient4_name varchar(100));
Use Student;
Alter Table Student_details Add (Student1_name varchar(100),Student2_name varchar(100),Student3_name varchar(100),Student4_name varchar(100));
Alter Table pg_detaile Add (Name1 Varchar(100),Name2 varchar(100),Name3 varchar(100),Name4 varchar(100));
Alter Table car_detailes Add(car1_name varchar(100),car2_name varchar(100),car3_name varchar(100),car4_name varchar(100));

/* Remove the coloumn from the Table */
Alter Table  Hostel_detailes Drop column Student1_name, Drop column Student2_name, Drop Student3_name, drop Student4_name ;
Alter Table Hostipal_detailes Drop column patient1_name,Drop column patient2_name,Drop column patient3_name,Drop Column patient4_name;
Alter Table Student_details Drop column Student1_name,Drop column Student2_name,Drop Column Student3_name,Drop Column Student4_name;
Alter table pg_detaile Drop column Name1,Drop column Name2,Drop column Name3,Drop column Name4;
Alter Table car_detailes Drop column car1_name,Drop column car2_name,Drop column car3_name,Drop column car4_name;

/* Rename a column in the Table */
Alter Table Hostel_detailes Rename column hostel_location  to hostel_address;
Alter Table Hostel_detailes Rename column hostel_fees to  Hostel_amount;
Alter Table Hostel_detailes Rename column warden_name to s_name;
Alter Table Hostel_detailes Rename column hostel_room_number to room_number;
select * from  Hostel_detailes;

Alter Table Hostipal_detailes Rename column hostipal_name to h_name;
Alter table Hostipal_detailes Rename column hostipal_location to h_adress;
Alter table Hostipal_detailes rename column hostipal_fees to hostipal_bill;
Alter table Hostipal_detailes Rename Column hostipal_contact_number to hospital_phon;


Alter Table Student_details Rename column student_name to s_name;
Alter Table Student_details Rename column student_contact_number to phone_number;
Alter Table Student_details rename column student_marks to s_marks;
Alter TAble Student_details reName column student_USN to s_USN;

Alter Table pg_detaile rename column pg_location to pg_address;
Alter Table pg_detaile rename column pg_fees to pg_bill;
Alter Table pg_detaile Rename column pg_contact_number to pg_number;
Alter Table pg_detaile ReNAMe column pg_warden_name to warden_name;

Alter Table car_detailes rename column car_color to color;
Alter Table car_detailes rename column car_model to model;
Alter TAble car_detailes reNAME column car_company to company;
Alter TAble car_detailes REName column car_setter to setter;

select*from car_detailes;
select*from pg_detaile;
select*from Hostipal_detailes;
select*from Hostel_detailes;
select*from Student_details;