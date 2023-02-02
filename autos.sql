create database laboratoriosqlautos
use laboratoriosqlautos

create table tiposautomotores
(
auttipo int not null identity(1,1),
autnombre varchar(15) not null,
primary key(auttipo)
);

create table automotores
(
autoplaca varchar(6) not null,
automarca varchar(30) not null,
autotipo int not null,
automodelo int not null,
autonumpasajeros int not null,
autocilindraje int not null,
autonumchasis varchar(20),
primary key(autoplaca),
foreign key(autotipo) references tiposautomotores(auttipo)
);

create table aseguramientos
(
asecodigo int not null identity (1,1),
asefechainicio date not null,
asefechaexpiracion date not null,
asevalorasegurado int not null,
aseestado varchar(30) not null,
asecosto int not null,
aseplaca varchar(6) not null,
primary key(asecodigo),
foreign key(aseplaca) references automotores(autoplaca)
);

create table incidentes
(
incicodigo int not null identity(1,1),
incifecha date not null,
inciplaca varchar(6) not null,
incilugar varchar(40) not null,
incicantheridos int not null,
incicanfatalidades int not null,
incicanautosinvolucrados int not null,
primary key(incicodigo),
foreign key(inciplaca) references automotores(autoplaca)
);

insert into tiposautomotores(autnombre)
values('Automóvil');
insert into tiposautomotores(autnombre)
values('Campero');
insert into tiposautomotores(autnombre)
values('Camión');

insert into automotores
(autoplaca,automarca,autotipo,automodelo,autonumpasajeros,autocilindraje,autonumchasis)
values('FLL420','chevrolet corsa',1,2003,5,1400,'wywzzz167kk009d25');
insert into automotores
(autoplaca,automarca,autotipo,automodelo,autonumpasajeros,autocilindraje,autonumchasis)
values('DKZ820','renault stepway',1,2008,5,1600,'wywwzz157kk009d45');
insert into automotores
(autoplaca,automarca,autotipo,automodelo,autonumpasajeros,autocilindraje,autonumchasis)
values('KJQ920','kia sportage',2,2009,7,2000,'wywzzz157kk009d25');

insert into aseguramientos
(asefechainicio,asefechaexpiracion,asevalorasegurado,aseestado,asecosto,aseplaca)
values('2012-09-30','2013-09-30',30000000,'Vigente',500000,'FLL420');
insert into aseguramientos
(asefechainicio,asefechaexpiracion,asevalorasegurado,aseestado,asecosto,aseplaca)
values('2012-09-27','2013-09-27',35000000,'Vigente',600000,'DKZ820');
insert into aseguramientos
(asefechainicio,asefechaexpiracion,asevalorasegurado,aseestado,asecosto,aseplaca)
values('2011-09-28','2012-09-28',50000000,'Vencido',800000,'KJQ920');

insert into incidentes
(incifecha,inciplaca,incilugar,incicantheridos,incicanfatalidades,incicanautosinvolucrados)
values('2012-09-30','DKZ820','Bucaramanga',0,0,2);
insert into incidentes
(incifecha,inciplaca,incilugar,incicantheridos,incicanfatalidades,incicanautosinvolucrados)
values('2012-09-30','FLL420','Girón',1,0,1);
insert into incidentes
(incifecha,inciplaca,incilugar,incicantheridos,incicanfatalidades,incicanautosinvolucrados)
values('2011-09-28','FLL420','Bucaramanga',1,0,2);