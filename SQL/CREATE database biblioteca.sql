CREATE database biblioteca;
use cadastro;

CREATE Table livro (
    id_livro INTEGER Not NULL auto_increment,
    titulo VARCHAR(120) Not null,
    autor INTEGER Not NULL,
    genero INTEGER Not NULL,
    public DATE Not NULL,
    PRIMARY KEY (id_livro)
)engine = innodb;

CREATE Table genero (
    id_genero INTEGER Not NULL auto_increment,
    tipo VARCHAR(20) Not null UNIQUE,
    PRIMARY KEY (id_genero)
)engine = innodb;

CREATE Table autor (
    id_autor INTEGER not NULL auto_increment,
    n_autor VARCHAR(120) Not null UNIQUE,
    pais VARCHAR(60) Not null,
    PRIMARY KEY (id_autor)
)engine = innodb;
 
INSERT INTO genero VALUES (null, 'Ficção Científica');
INSERT INTO genero VALUES (null, 'Fantasia');
INSERT INTO genero VALUES (null, 'Romance');
INSERT INTO genero VALUES (null, 'Mistério');
INSERT INTO genero VALUES (null, 'Suspense');
INSERT INTO genero VALUES (null, 'Drama');
INSERT INTO genero VALUES (null, 'Aventura');
INSERT INTO genero VALUES (null, 'Terror');
INSERT INTO genero VALUES (null, 'Poesia');
INSERT INTO genero VALUES (null, 'Não Ficção');

INSERT INTO autor (n_autor, pais) VALUES ('Machado de Assis', 'Brasil');
INSERT INTO autor (n_autor, pais) VALUES ('Clarice Lispector', 'Brasil');
INSERT INTO autor (n_autor, pais) VALUES ('Lima Barreto', 'Brasil');
INSERT INTO autor (n_autor, pais) VALUES ('Jorge Amado', 'Brasil');
INSERT INTO autor (n_autor, pais) VALUES ('Érico Veríssimo', 'Brasil');
INSERT INTO autor (n_autor, pais) VALUES ('Carlos Drummond de Andrade', 'Brasil');
INSERT INTO autor (n_autor, pais) VALUES ('Rubem Fonseca', 'Brasil');
INSERT INTO autor (n_autor, pais) VALUES ('Guimarães Rosa', 'Brasil');
INSERT INTO autor (n_autor, pais) VALUES ('Cecília Meireles', 'Brasil');
INSERT INTO autor (n_autor, pais) VALUES ('Vinicius de Moraes', 'Brasil');

INSERT INTO livro (titulo, autor, genero, public) VALUES ('2001: Uma Odisseia no Espaço', 1, 1, '1968-04-02');
INSERT INTO livro (titulo, autor, genero, public) VALUES ('Duna', 2, 1, '1965-06-01');
INSERT INTO livro (titulo, autor, genero, public) VALUES ('Neuromancer', 3, 1, '1984-07-01');

INSERT INTO livro (titulo, autor, genero, public) VALUES ('O Senhor dos Anéis', 10, 2, '1954-07-29');
INSERT INTO livro (titulo, autor, genero, public) VALUES ('As Crônicas de Nárnia', 9, 2, '1950-10-16');
INSERT INTO livro (titulo, autor, genero, public) VALUES ('Harry Potter e a Pedra Filosofal', 8, 2, '1997-06-26');

INSERT INTO livro (titulo, autor, genero, public) VALUES ('Dom Casmurro', 7, 3, '1899-01-01');
INSERT INTO livro (titulo, autor, genero, public) VALUES ('O Amor nos Tempos do Cólera', 6, 3, '1985-01-01');
INSERT INTO livro (titulo, autor, genero, public) VALUES ('Orgulho e Preconceito', 5, 3, '1813-01-28');


INSERT INTO livro (titulo, autor, genero, public) VALUES ('O Assassinato no Expresso Oriente', 4, 4, '1934-01-01');


