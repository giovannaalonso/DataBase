create database db_escola;

 use db_escola;
 
 CREATE TABLE tb_estudantes (
				id bigint auto_increment,
            nome varchar (255) not null,
            nota decimal not null,
            ano int not null,
            repetente enum ('sim', 'não'),
            materias enum ('matmática', 'português', 'geografia', 'história', 'ciências', 'biologia', 'física', 'química', 'literatura', 'artes', 'redação', 'educação física'),
            primary key (id)
            );
 
INSERT INTO tb_estudantes (nome, nota, ano, repetente, materias) VALUES ("Leonardo Costa", 8.0, 3, 'não', 'artes');
INSERT INTO tb_estudantes (nome, nota, ano, repetente, materias) VALUES ("Yuri", 7, 8, 'não', 'química');
INSERT INTO tb_estudantes (nome, nota, ano, repetente, materias) VALUES ("Nicole", 9, 2, 'não', 'literatura');
INSERT INTO tb_estudantes (nome, nota, ano, repetente, materias) VALUES ("Daniela", 2, 8, 'sim', 'ciências');
INSERT INTO tb_estudantes (nome, nota, ano, repetente, materias) VALUES ("Igor", 0.5, 6, 'não', 'química');
INSERT INTO tb_estudantes (nome, nota, ano, repetente, materias) VALUES ("Camila", 7, 8, 'sim', 'química');
INSERT INTO tb_estudantes (nome, nota, ano, repetente, materias) VALUES ("Junior", 10, 5, 'não', 'biologia');
INSERT INTO tb_estudantes (nome, nota, ano, repetente, materias) VALUES ("Fernanda", 3, 7, 'sim', 'química');

SELECT * FROM tb_estudantes WHERE nota > 7;
SELECT * FROM tb_estudantes WHERE nota < 7;

UPDATE tb_estudantes SET nota = 2 WHERE id = 5;