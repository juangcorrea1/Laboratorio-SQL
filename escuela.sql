create database laboratoriosqlescuela;
use laboratoriosqlescuela;

create table profesor
(
doc_prof varchar(11) not null,
nom_prof varchar(30) not null,
ape_prof varchar(30) not null,
cate_prof int not null,
sal_prof int not null,
primary key(doc_prof),
);

create table curso
(
cod_curs varchar(6) not null,
nom_curs varchar(100) not null,
horas_cur int not null,
valor_cur int not null,
primary key(cod_curs)
);

create table estudiante
(
doc_est varchar(11) not null,
nom_est varchar(30) not null,
ape_est varchar(30) not null,
edad_est int not null,
primary key(doc_est),
unique(doc_est)
);

create table estudiantexcurso
(
cod_cur_estcur varchar(6) not null,
doc_est_estcur varchar (11) not null,
fec_ini_estcur date not null,
foreign key(cod_cur_estcur) references curso(cod_curs),
foreign key(doc_est_estcur) references estudiante(doc_est)
);

insert into profesor
(doc_prof,nom_prof,ape_prof,cate_prof,sal_prof)
values('63502720','Martha','Rojas',2,690000);
insert into profesor
(doc_prof,nom_prof,ape_prof,cate_prof,sal_prof)
values('91216904','Carlos','Perez',3,950000);
insert into profesor
(doc_prof,nom_prof,ape_prof,cate_prof,sal_prof)
values('13826789','Maritza','Angarita',1,550000);
insert into profesor
(doc_prof,nom_prof,ape_prof,cate_prof,sal_prof)
values('1098765789','Alejandra','Torres',4,1100000);

insert into curso
(cod_curs,nom_curs,horas_cur,valor_cur)
values('149842','Fundamentos de Bases de datos',40,500000);
insert into curso
(cod_curs,nom_curs,horas_cur,valor_cur)
values('250067','Fundamentos de SQL',20,700000);
insert into curso
(cod_curs,nom_curs,horas_cur,valor_cur)
values('289011','Manejo de Mysql',45,550000);
insert into curso
(cod_curs,nom_curs,horas_cur,valor_cur)
values('345671','Fundamentals of Oracle',60,3000000);

insert into estudiante
(doc_est,nom_est,ape_est,edad_est)
values('63502720','María','Perez',23);
insert into estudiante
(doc_est,nom_est,ape_est,edad_est)
values('91245678','Carlos José','Lopez',25);
insert into estudiante
(doc_est,nom_est,ape_est,edad_est)
values('1098098097','Jonatan','Ardila',17);
insert into estudiante
(doc_est,nom_est,ape_est,edad_est)
values('1098765678','Carlos','Martinez',19);

insert into estudiantexcurso
(cod_cur_estcur,doc_est_estcur,fec_ini_estcur)
values('289011','1098765678','2011-01-02');
insert into estudiantexcurso
(cod_cur_estcur,doc_est_estcur,fec_ini_estcur)
values('250067','63502720','2011-01-03');
insert into estudiantexcurso
(cod_cur_estcur,doc_est_estcur,fec_ini_estcur)
values('289011','1098098097','2011-01-02');
insert into estudiantexcurso
(cod_cur_estcur,doc_est_estcur,fec_ini_estcur)
values('345671','63502720','2011-01-04');

