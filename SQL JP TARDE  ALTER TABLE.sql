https://dontpad.com/senaicodigo

-- DDL - Data Definition Language
	  -- Linguagem de Definição de Dados
DROP DATABASE projetodiario1;
CREATE DATABASE projetodiario1;
USE projetodiario1;

CREATE TABLE aluno(    
    id int primary key auto_increment,
    ra char(8) NOT NULL UNIQUE
); 
-- DML
INSERT INTO aluno(ra)VALUES('12345678');
INSERT INTO aluno(ra) VALUES('12345670');
INSERT INTO aluno(ra) VALUES('12345671');
INSERT INTO aluno(ra) VALUES('12345672');
INSERT INTO aluno(ra) VALUES('12345673');
INSERT INTO aluno(ra) VALUES('12345674');
INSERT INTO aluno(ra) VALUES('12345675');
INSERT INTO aluno(ra) VALUES('12345676');
INSERT INTO aluno(ra) VALUES('12345677');
INSERT INTO aluno(ra) VALUES('12345679');
INSERT INTO aluno(ra) VALUES('12345680');
INSERT INTO aluno(ra) VALUES('12345681');
INSERT INTO aluno(ra) VALUES('12345682');
INSERT INTO aluno(ra) VALUES('12345683');
INSERT INTO aluno(ra) VALUES('12345684');
INSERT INTO aluno(ra) VALUES('12345685');
INSERT INTO aluno(ra) VALUES('12345686');
INSERT INTO aluno(ra) VALUES('12345687');
INSERT INTO aluno(ra) VALUES('12345688');
INSERT INTO aluno(ra) VALUES('12345689');
INSERT INTO aluno(ra) VALUES('12345690');
INSERT INTO aluno(ra) VALUES('12345691');
INSERT INTO aluno(ra) VALUES('12345692');
INSERT INTO aluno(ra) VALUES('12345693');
INSERT INTO aluno(ra) VALUES('12345694');

truncate table aluno;
-- DQL
SELECT * FROM aluno;
show tables;

CREATE TABLE diariobordo (
    id int PRIMARY KEY auto_increment,
    texto text NOT NULL,
    datahora datetime NOT NULL,
    fk_aluno_id int NOT NULL
);
show tables;
 
ALTER TABLE diariobordo ADD CONSTRAINT FK_diariobordo_2
    FOREIGN KEY (fk_aluno_id)
    REFERENCES aluno (id)
    ON DELETE CASCADE;
    
SELECT * FROM diariobordo;
SELECT * FROM aluno;
INSERT diariobordo(texto,
                   datahora,
                   fk_aluno_id)VALUES('a aula foi legal',
                                      '2024-08-01 09:16:00',
                                       13);
INSERT diariobordo(texto,
                   datahora,
                   fk_aluno_id)VALUES('estou aprendendo insert',
                                      '2024-08-01 09:33:00',
                                       24);
                                       INSERT diariobordo(texto,
                   datahora,
                   fk_aluno_id)VALUES('estou aprendendo insert de novo',
                                      '2024-08-01 09:33:00',
                                       24);
SELECT *  FROM diariobordo;
SELECT * FROM 
     diariobordo 
     JOIN 
	 aluno 
     ON diariobordo.fk_aluno_id = aluno.id;
SELECT
     d.texto,
     d.datahora,
     a.ra
     FROM 
     diariobordo d 
     JOIN 
	 aluno a 
     ON d.fk_aluno_id = a.id;




-- Exercício
-- Modelo Conceitual - crie uma nova entidade chamada avaliacao.
                                                      -- id pk
                                                      -- nota1 int
                                                      -- nota2 int                                                      -- nota3 int
                                                      -- nota4 int
                                                      -- fk_aluno_id
-- Modelo Lógico
-- Modelo Físico (brModelo)
-- INSERTs de 5 alunos com as notas
-- SELECT * FROM avaliacao;
-- SELECT JOIN : tabela aluno com tabela avaliação.


ALTER TABLE avaliacao
ADD CONSTRAINT CHECK (nota1 <= 25),
ADD CONSTRAINT CHECK (nota2 <= 25),
ADD CONSTRAINT CHECK (nota3 <= 25),
ADD CONSTRAINT CHECK (nota4 <= 25);

ALTER TABLE avaliacao ADD CONSTRAINT FK_avaliacao
    FOREIGN KEY (fk_aluno_id)
    REFERENCES aluno(id)
    ON DELETE CASCADE;


ALTER TABLE aluno ADD COLUMN nome varchar(80);
ALTER TABLE aluno ADD COLUMN tempoestudo INT NOT NULL;
ALTER TABLE aluno ADD COLUMN rendafamiliar DECIMAL(10, 2);
describe aluno;
SELECT * FROM aluno;

SELECT * FROM aluno;
SELECT * FROM aluno ORDER BY id DESC LIMIT 1;
INSERT aluno(ra,nome,tempoestudo,rendafamiliar)VALUES('12345698','Juarez',1,4567.98);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345601', 'Ana Souza',1, 2000.00);

-- Inserir 70 dados na tabela aluno
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) 
VALUES 

(7, 'Fernanda Lima', 7, 2500.00),
(8, 'Roberto Mendes', 6, 3200.00),
(9, 'Isabela Martins', 4, 4000.00),
(10, 'Gabriel Souza', 12, 6000.00),
(11, 'Camila Rocha', 9, 7200.00),
(12, 'Juliano Costa', 14, 8500.00),
(13, 'Tatiane Oliveira', 8, 9500.00),
(14, 'Thiago Silva', 13, 11000.00),
(15, 'Marcia Fernandes', 15, 13000.00),
(16, 'Paula Almeida', 11, 15000.00),
(17, 'Eduardo Lima', 10, 17000.00),
(18, 'Lúcia Campos', 13, 19000.00),
(19, 'Bruno Santos', 16, 21000.00),
(20, 'Sabrina Ribeiro', 14, 23000.00),
(21, 'Ricardo Silva', 12, 25000.00),
(22, 'Renata Barbosa', 15, 27000.00),
(23, 'Rafael Costa', 18, 29000.00),
(24, 'Marina Souza', 17, 31000.00),
(25, 'João Vitor', 14, 34000.00),
(26, 'Larissa Fernandes', 12, 36000.00),
(27, 'André Lima', 16, 38000.00),
(28, 'Beatriz Martins', 15, 40000.00),
(29, 'Felipe Almeida', 14, 42000.00),
(30, 'Claudia Rocha', 18, 45000.00),
(31, 'Igor Santos', 13, 47000.00),
(32, 'Mariana Ribeiro', 15, 49000.00),
(33, 'Daniel Oliveira', 17, 51000.00),
(34, 'Jéssica Almeida', 16, 53000.00),
(35, 'Marcelo Costa', 14, 55000.00),
(36, 'Vanessa Santos', 20, 57000.00),
(37, 'Lucas Pereira', 19, 59000.00),
(38, 'Amanda Lima', 18, 61000.00),
(39, 'Fernando Silva', 17, 63000.00),
(40, 'Priscila Barbosa', 15, 65000.00),
(41, 'Joana Campos', 20, 67000.00),
(42, 'Vitor Rodrigues', 16, 69000.00),
(43, 'Aline Rocha', 19, 71000.00),
(44, 'Gustavo Costa', 17, 73000.00),
(45, 'Renan Almeida', 20, 75000.00),
(46, 'Tatiane Silva', 18, 77000.00),
(47, 'Matheus Santos', 19, 79000.00),
(48, 'Juliana Costa', 16, 81000.00),
(49, 'Thiago Oliveira', 17, 83000.00),
(50, 'Paula Ribeiro', 18, 85000.00),
(51, 'Eduardo Campos', 20, 87000.00),
(52, 'Camila Santos', 16, 89000.00),
(53, 'Bruna Lima', 17, 91000.00),
(54, 'Felipe Souza', 19, 93000.00),
(55, 'Amanda Almeida', 20, 95000.00),
(56, 'Ricardo Costa', 15, 97000.00),
(57, 'Larissa Silva', 16, 99000.00),
(58, 'João Campos', 14, 101000.00),
(59, 'Marcelo Ribeiro', 20, 103000.00),
(60, 'Sabrina Souza', 19, 105000.00),
(61, 'Victor Lima', 18, 107000.00),
(62, 'Daniela Almeida', 17, 109000.00),
(63, 'Amanda Santos', 20, 111000.00),
(64, 'Rafael Pereira', 16, 113000.00),
(65, 'Fernanda Costa', 14, 115000.00),
(66, 'Ricardo Almeida', 18, 117000.00),
(67, 'Juliana Rocha', 19, 119000.00),
(68, 'Lucas Campos', 17, 121000.00),
(69, 'Tatiane Lima', 20, 123000.00),
(70, 'Gabriel Santos', 16, 125000.00);




