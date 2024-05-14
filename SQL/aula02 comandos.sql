	mysql -u root -p

drop database cadastro; 
show tables;
desc cidade;
resultado:

show databases;

resultado:
    MariaDB [(none)]> show databases;
    +--------------------+
    | Database           |
    +--------------------+
    | information_schema |
    | mysql              |
    | performance_schema |
    | phpmyadmin         |
    | test               |
    +--------------------+
    5 rows in set (0.01 sec)

create database cadastro;

use cadastro;

create table curso (
    id_curso integer not null auto_increment,
    n_curso varchar (80) not null unique,
    primary key (id_curso)) engine=innodb;

create table serie (
    id_serie integer not null auto_increment,
    n_serie varchar (3) not null unique,
    primary key (id_serie)) engine=innodb;
    
create table cidade (
    id_cidade integer not null auto_increment,
    n_cidade varchar (100) not null unique,
    primary key (id_cidade)) engine=innodb;

create table genero (
    id_genero integer not null auto_increment,
    n_genero varchar (50) not null unique,
    primary key (id_genero)) engine=innodb;

create table usuario(
    id_usuario integer not null auto_increment,
    n_usu varchar(120) not null,
    cpf bigint not null unique,
    nasc date not null,
    cidade integer not null,
    genero integer not null,
    curso integer not null,
    serie integer not null,
    foreign key (cidade) references cidade (id_cidade),
    foreign key (genero) references genero (id_genero),
    foreign key (curso) references curso (id_curso),
    foreign key (serie) references serie (id_serie),
    primary key (id_usuario) 
)engine=innodb;

inserir dados:

insert into genero value (null,'masculino');
insert into genero value (null,'feminino');
insert into genero value (null,'outros');

ler dados 
select * from genero;

insert into curso value (null,'Desenvolvimento de sistemas');
insert into curso value (null,'Quimica');
insert into curso value (null,'Enfermagem');
insert into curso value (null,'Farmacia');
insert into curso value (null,'Informatica');
insert into curso value (null,'Logistica');
insert into curso value (null,'Administração');

select * from curso;
select * from curso order by id_curso;

insert into serie value (null,'1°');
insert into serie value (null,'2°');
insert into serie value (null,'3°');

select * from serie;

insert into cidade value (null,'Mauá');
insert into cidade value (null,'Ribeirão Pires');
insert into cidade value (null,'Santo Andre');
insert into cidade value (null,'Rio Grande da Serra');

select * from cidade;

select * from cidade;
select * from genero;
select * from curso;
select * from serie;

insert into usuario value (null,'Eduardo',12345678900,'2008/01/04',1 /*cidade max 4*/ ,1 /*genero max 3*/ ,1 /*curso max 7*/,2 /*serie max 3*/);

insert into usuario value (null,'Pedro',12345678901,'2007/10/01',1,1,1,2);

insert into usuario value (null,'Eduardo', 12345678900, '2000/01/01', 1, 1, 1, 1);
insert into usuario value (null,'Pedro', 12345678901, '2001/02/02', 2, 1, 2, 2);
insert into usuario value (null,'Larissa', 12345678902, '2002/03/03', 3, 2, 3, 3);
insert into usuario value (null,'Sarah', 12345678903, '2003/04/04', 2, 3, 4, 1);
insert into usuario value (null,'Lucas', 12345678904, '2004/05/05', 1, 1, 5, 2);
insert into usuario value (null,'João', 12345678905, '2005/06/06', 4, 3, 6, 3);
insert into usuario value (null,'Leticia', 12345678906, '2006/07/07', 3, 2, 7, 1);
insert into usuario value (null,'Marcelo', 12345678907, '2007/08/08', 1, 1, 1, 2);
insert into usuario value (null,'Guilherme', 12345678908, '2008/09/09', 1, 3, 2, 3);
insert into usuario value (null,'Juliana', 12345678909, '2009/10/10', 2, 2, 3, 1);

insert into usuario value (null,'Carlinhos', 12345678910, '2010/11/11', 3, 3, 4, 2);
insert into usuario value (null,'Giovana', 12345678911, '2011/12/12', 2, 2, 5, 3);
insert into usuario value (null,'Andre', 12345678912, '2012/01/13', 1, 1, 6, 1);
insert into usuario value (null,'Luiz', 12345678913, '2013/02/14', 2, 1, 7, 2);
insert into usuario value (null,'Ana Clara', 12345678914, '2014/03/15', 3, 3, 1, 3);
insert into usuario value (null,'Paulo', 12345678915, '2015/04/16', 4, 1, 2, 1);
insert into usuario value (null,'Roberta', 12345678916, '2016/05/17', 1, 2, 3, 2);
insert into usuario value (null,'Juana', 12345678917, '2017/06/18', 2, 3, 4, 3); 
insert into usuario value (null,'Claudio', 12345678918, '2018/07/19', 3, 1, 5, 1);
insert into usuario value (null,'Armando', 12345678919, '2019/08/20', 4, 1, 6, 2);