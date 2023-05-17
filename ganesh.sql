create table Employee(
empid int primary key,
ename varchar(20),
pmgrid int,
projectid int,
constraint fk foreign key(pmgrid) references pmanager(pmgrid), 
constraint fk foreign key(projectid) references project(projectid) 
);



create table Pmanager(
pmgrid int primary key,
pmgrname varchar(20)
);


create table Dmanager(
dmgrid int primary key,
dmgrname varchar(20)
);

create table stakeholder(
sname varchar(20),
dmgrid int ,
constraint fk foreign key(dmgrid )references project(dmgrid) );


create table project(
projectid int primary key,
projectname  varchar(20),
Startdate date,
Enddate date, 
pmgrid int ,
dmgrid int ,
constraint fk foreign key(pmgrid) references pmanager(pmgrid), 
constraint fk foreign key(dmgrid )references project(dmgrid) 
);
