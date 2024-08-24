create database livraria;
use livraria;

CREATE TABLE Categoria (
    id_categoria INT PRIMARY KEY,
    descricao VARCHAR(100)
);

CREATE TABLE Livro (
    id_livro INT PRIMARY KEY,
    titulo VARCHAR(255),
    ano_publicacao INT,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria)
);
CREATE TABLE Autor (
    id_autor INT PRIMARY KEY,
    nome VARCHAR(255)
);

CREATE TABLE Livro_Autor (
    id_livro INT,
    id_autor INT,
    FOREIGN KEY (id_livro) REFERENCES Livro(id_livro),
    FOREIGN KEY (id_autor) REFERENCES Autor(id_autor),
    PRIMARY KEY (id_livro, id_autor)
);

CREATE TABLE Exemplar (
    id_exemplar INT PRIMARY KEY,
    id_livro INT,
    codigo_barras VARCHAR(50),
    status ENUM('Disponível', 'Emprestado', 'Reservado'),
    FOREIGN KEY (id_livro) REFERENCES Livro(id_livro)
);
CREATE TABLE Usuário (
    id_usuario INT PRIMARY KEY,
    nome VARCHAR(255),
    data_nascimento DATE
);
CREATE TABLE Empréstimo (
    id_emprestimo INT PRIMARY KEY,
    id_usuario INT,
    id_exemplar INT,
    data_emprestimo DATE,
    data_devolucao DATE,
    FOREIGN KEY (id_usuario) REFERENCES Usuário(id_usuario),
    FOREIGN KEY (id_exemplar) REFERENCES Exemplar(id_exemplar)
);

ALTER TABLE Livro ADD COLUMN editora VARCHAR(100);

INSERT INTO Categoria (id_categoria, descricao)
VALUES
(1, 'Ficção Científica'),
(2, 'Romance'),
(3, 'História');

INSERT INTO Autor (id_autor, nome)
VALUES
(1, 'Isaac Asimov'),
(2, 'George R. R. Martin '),
(3, 'Yuval Noah Harari');

INSERT INTO Livro (id_livro, titulo, ano_publicacao, id_categoria)
VALUES
(1, 'Fundação', 1951, 1),
(2, 'A Guerra dos Tronos', 1996, 2),
(3, 'Sapiens: Uma Breve História da Humanidade', 2011, 3);

INSERT INTO Livro_Autor (id_livro, id_autor)
VALUES
(1, 1),
(2, 2),
(3, 3);

INSERT INTO Usuário (id_usuario, nome, data_nascimento)
VALUES
(1, 'João ', '1990-05-21'),
(2, 'Maria ', '1985-09-12'),
(3, 'Carlos ', '2000-02-15');
INSERT INTO Exemplar (id_exemplar, id_livro, codigo_barras, status)
VALUES
(1, 1, '123456789', 'Disponível'),
(2, 2, '987654321', 'Emprestado'),
(3, 3, '555555555', 'Reservado');
 
 INSERT INTO Empréstimo (id_emprestimo, id_usuario, id_exemplar, data_emprestimo, data_devolucao)
VALUES
(1, 1, 2, '2024-08-20', '2024-09-20'),
(2, 2, 3, '2024-08-22', NULL);



#SELECT * FROM Categoria;
#SELECT * FROM Autor;
#SELECT * FROM Livro;
#SELECT * FROM Livro_Autor;
#SELECT * FROM Exemplar;
#SELECT * FROM Usuário;
#SELECT * FROM Empréstimo;


