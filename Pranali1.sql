create table staff (
e_no varchar (9) not null constraint staff_e_no_pk primary key,
e_name char(20),
e_add varchar(30));


insert all
into staff (e_no, e_name, e_add)
values ('E1', 'Rohit', 'Kolhapur')

into staff (e_no, e_name, e_add)
values ('E2', 'Aashu', 'Kharadi Pune')

into staff (e_no, e_name, e_add)
values ('E3', 'Suraj', 'Kolhapur')

into staff (e_no, e_name, e_add)
values ('E4', 'Raju', 'Dhule')

into staff (e_no, e_name, e_add)
values ('E5', 'Rohini', 'Solapur')

into staff (e_no, e_name, e_add)
values ('E6', 'Pranali', 'Viman Nagar,Pune')

into staff (e_no, e_name, e_add)
values ('E7', 'Sonali', 'Nagar')

select * from dual;

select * from staff;




create table dept (
d_no varchar (9) not null constraint dept_d_no_pk primary key,
d_name char(20),
e_no varchar(9),
constraint dept_e_no_fk foreign key (e_no)
references staff (e_no));

insert all
into dept (d_no, d_name, e_no)
values ('D1', 'IT', 'E2')

into dept (d_no, d_name, e_no)
values ('D2', 'Finance', 'E4')
into dept (d_no, d_name, e_no)
values ('D3', 'IT', 'E1')
into dept (d_no, d_name, e_no)
values ('D5', 'IT Helpdesck', 'E7')
into dept (d_no, d_name, e_no)
values ('D4', 'NOC', 'E5')
into dept (d_no, d_name, e_no)
values ('D6', 'Contracting', 'E2')
select * from dual;

 insert into dept (d_no, d_name, e_no)
values ('D7', 'NOC', 'E3');
 insert into dept (d_no, d_name, e_no)
values ('D8', 'Finance', 'E2');