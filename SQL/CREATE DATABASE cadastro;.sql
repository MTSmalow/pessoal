CREATE database cadastro;
use cadastro;

CREATE Table cidade (
    id_cidade INTEGER Not NULL auto_increment,
    n_cid VARCHAR(100) Not null UNIQUE,
    PRIMARY KEY (id_cidade)
)engine = innodb;

CREATE Table genero (
    id_genero INTEGER Not NULL auto_increment,
    n_gen VARCHAR(50) Not null UNIQUE,
    PRIMARY KEY (id_genero)
)engine = innodb;

CREATE Table curso (
    id_curso INTEGER not NULL auto_increment,
    n_curso VARCHAR(100) Not null UNIQUE,
    PRIMARY KEY (id_curso)
)engine = innodb;

CREATE Table cidade (
    id_serie INTEGER Not NULL auto_increment,
    n_serie VARCHAR(3) Not null UNIQUE,
    PRIMARY KEY (id_serie)
)engine = innodb;
