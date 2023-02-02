create database laboratoriosqltienda
use laboratoriosqltienda

create table cliente
(
id_cli varchar(11) not null,
nom_cli varchar(30) not null,
ape_cli varchar(30) not null,
dir_cli varchar(100) not null,
dep_cli varchar(20) not null,
mes_cum_cli varchar(10),
primary key(id_cli),
unique(id_cli)
);

create table articulo
(
id_art int not null identity(1,1),
tit_art varchar(100) not null,
aut_art varchar(100) not null,
edi_art varchar(300) not null,
prec_art int not null,
primary key(id_art)
);

Create table pedido
(
id_ped int not null identity(1,1),
id_cli_ped varchar(11) not null,
fec_ped date not null,
val_ped int not null,
primary key(id_ped),
foreign key(id_cli_ped) references cliente(id_cli)
);

create table articuloxpedido
(
id_ped_artped int not null,
id_art_artped int not null,
can_art_artped int not null,
val_ven_art_artped int not null,
foreign key(id_ped_artped) references pedido(id_ped),
foreign key(id_art_artped) references articulo(id_art)
);

create table compañia
(
comnit varchar(11) not null,
comnombre varchar(30) not null,
comañofun int not null,
comreplegal varchar(100) not null,
primary key(comnit)
);

insert into cliente
(id_cli,nom_cli,ape_cli,dir_cli,dep_cli,mes_cum_cli)
values('63502718','Maritza','Rojas','Cll 34 14-45','Santander','Abril');
insert into cliente
(id_cli,nom_cli,ape_cli,dir_cli,dep_cli,mes_cum_cli)
values('13890234','Roger','Ariza','Cra 30 13-45','Antioquia','Junio');
insert into cliente
(id_cli,nom_cli,ape_cli,dir_cli,dep_cli,mes_cum_cli)
values('77191956','Juan Carlos','Arenas','Diag 23 12-34
ap101','Valle','Marzo');
insert into cliente
(id_cli,nom_cli,ape_cli,dir_cli,dep_cli,mes_cum_cli)
values('1098765789','Catalina','Zapata','Av Libertador 30-
14','Cauca','Marzo');

insert into articulo
(tit_art,aut_art,edi_art,prec_art)
values('Redes cisco','Ernesto Arigasello','Alfaomega-Rama',60000);
insert into articulo
(tit_art,aut_art,edi_art,prec_art)
values('Facebook y twitter para adultos','Veloso
Claudio','Alfaomega',52000);
insert into articulo
(tit_art,aut_art,edi_art,prec_art)
values('Creación de un portal con php y mysql','Jacobo Pavón
Puertas','Alfaomega-Rama',40000);
insert into articulo
(tit_art,aut_art,edi_art,prec_art)
values('Administración de sistemas operativos','Julio Gómez
López','Alfaomega-Rama',55000);

insert into pedido
(id_cli_ped,fec_ped,val_ped)
values('63502718','2012-05-25',120000);
insert into pedido
(id_cli_ped,fec_ped,val_ped)
values('77191956','2012-04-30',55000);
insert into pedido
(id_cli_ped,fec_ped,val_ped)
values('63502718','2011-12-10',260000);
insert into pedido
(id_cli_ped,fec_ped,val_ped)
values('1098765789','2012-02-25',1800000);

insert into articuloxpedido
(id_ped_artped,id_art_artped,can_art_artped,val_ven_art_artped)
values(1,3,5,40000);
insert into articuloxpedido
(id_ped_artped,id_art_artped,can_art_artped,val_ven_art_artped)
values(1,4,12,55000);
insert into articuloxpedido
(id_ped_artped,id_art_artped,can_art_artped,val_ven_art_artped)
values(2,1,5,65000);
insert into articuloxpedido
(id_ped_artped,id_art_artped,can_art_artped,val_ven_art_artped)
values(3,2,10,55000);
insert into articuloxpedido
(id_ped_artped,id_art_artped,can_art_artped,val_ven_art_artped)
values(3,3,12,45000);
insert into articuloxpedido
(id_ped_artped,id_art_artped,can_art_artped,val_ven_art_artped)
values(4,1,20,65000);

insert into compañia(comnit,comnombre,comañofun,comreplegal)
values('800890890-2','Seguros Atlantida',1998,'Carlos López');
insert into compañia(comnit,comnombre,comañofun,comreplegal)
values('899999999-1','Aseguradora Rojas',1991,'Luis Fernando Rojas');
insert into compañia(comnit,comnombre,comañofun,comreplegal)
values('899999999-5','Seguros del Estadio',2001,'Maria Margarita Pérez');