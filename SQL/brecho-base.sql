create database brecho;

use brecho;

create table tipo(
codtipo integer not null auto_increment,
nometipo varchar(80)not null unique,
primary key (codtipo))engine=innodb;

create table cor(
codcor integer not null auto_increment,
nomecor varchar(80)not null unique,
primary key (codcor))engine=innodb;

create table tamanho(
codtamanho integer not null auto_increment,
nometamanho varchar(80)not null unique,
primary key (codtamanho))engine=innodb;

create table situacao(
codsituacao integer not null auto_increment,
nomesituacao varchar(80)not null unique,
primary key (codsituacao))engine=innodb;

create table produtos(
codprod integer not null auto_increment,
qrcode bigint not null unique,
tipoprod integer not null,
corprod integer not null,
tamprod integer not null,
sitprod integer not null,
descprod varchar (255),
valorent decimal not null,
valorsaida decimal not null,
dataent date not null,
datasaida date,
fotoprod varchar (500),
FOREIGN KEY (tipoprod) references tipo (codtipo),
FOREIGN KEY (corprod) references cor (codcor),
FOREIGN KEY (tamprod) references tamanho (codtamanho),
FOREIGN KEY (sitprod) references situacao (codsituacao),
primary key (codprod)) engine = innodb;

insert into tipo value (null, 'camisa');
insert into tipo value (null, 'calça');
insert into tipo value (null, 'tenis');
insert into tipo value (null, 'casaco');
insert into tipo value (null, 'boné');
insert into tipo value (null, 'blusa');
insert into tipo value (null, 'short');
insert into tipo value (null, 'bermuda');
insert into tipo value (null, 'sapato');
insert into tipo value (null, 'regata');

insert into cor value (null, 'branca');
insert into cor value (null, 'preta');
insert into cor value (null, 'azul');
insert into cor value (null, 'marrom');
insert into cor value (null, 'lilás');
insert into cor value (null, 'amarela');
insert into cor value (null, 'verde');

insert into tamanho value (null, 'pp');
insert into tamanho value (null, 'p');
insert into tamanho value (null, 'm');
insert into tamanho value (null, 'g');
insert into tamanho value (null, 'gg');
insert into tamanho value (null, '34');
insert into tamanho value (null, '36');
insert into tamanho value (null, '38');
insert into tamanho value (null, '40');
insert into tamanho value (null, '42');
insert into tamanho value (null, '44');

insert into situacao value (null, 'novo');
insert into situacao value (null, 'semi novo');
insert into situacao value (null, 'usado');
