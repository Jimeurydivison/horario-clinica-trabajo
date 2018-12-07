create database clinica_horario_trabajo
use clinica_horario_trabajo

create table empleado (
id_empleado int,
nom_empleado varchar (130),
constraint pk_empl primary key (id_empleado)
)


create table HORARIO(
id_horario int,
tanda_horario time,
constraint pk_hora primary key (id_horario)
)

create table HORA_EMPL(
id_horario1 int,
id_empleado2 int,
hora_entrada datetime,
hora_salida datetime,
constraint fk_hora foreign key (id_horario1) references HORARIO (id_horario),  
constraint fk_empl foreign key (id_empleado2) references EMPLEADO (id_empleado)   
)

insert into EMPLEADO values(01,'luis ruiz')
insert into EMPLEADO values(02,'jose guillen')
insert into EMPLEADO values(03,'joseli diaz')
insert into EMPLEADO values(04,'mari ruiz')
insert into EMPLEADO values(05,'laure moreno')
insert into EMPLEADO values(06,'rambo diaz')
insert into EMPLEADO values(07,'juanita hess')
insert into EMPLEADO values(08,'rossana moreno')
insert into EMPLEADO values(09,'luisa cabral')
insert into EMPLEADO values(10,'rosa nuñez')



insert into HORARIO values(01,'7:30 - 12:00')
insert into HORARIO values(02,'7:00 - 12:30')
insert into HORARIO values(03,'7:30 - 10:00')
insert into HORARIO values(04,'10:30 - 1:00')
insert into HORARIO values(05,'11:00 - 4:00')
insert into HORARIO values(06,'1:30 - 6:00')
insert into HORARIO values(07,'6:30 - 9:00')
insert into HORARIO values(08,'9:00 - 12:00')
insert into HORARIO values(09,'6:00 - 11:00')
insert into HORARIO values(10,'9:30 - 5:00')



insert into HORA_EMPL values (03, 01, '7:30', '10:00')
insert into HORA_EMPL values (01, 02, '7:30', '12:00')
insert into HORA_EMPL values (04, 03, '10:30', '1:00')
insert into HORA_EMPL values (06, 04, '1:30', '6:00')
insert into HORA_EMPL values (07, 05, '6:30', '9:00')
insert into HORA_EMPL values (08, 06, '9:00', '12:00')
insert into HORA_EMPL values (09, 07, '6:00', '11:00')
insert into HORA_EMPL values (08, 08, '7:30', '12:00')
insert into HORA_EMPL values (09, 09, '6:00', '11:00')
insert into HORA_EMPL values (10, 10, '9:30', '5:00')



