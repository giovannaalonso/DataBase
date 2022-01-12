CREATE DATABASE db_rh;
use db_rh;

CREATE TABLE tb_funcionarios (
		id bigint auto_increment,
    nome varchar (255) not null,
    salario decimal not null,
    area varchar (255) not null,
    enquadramento enum ('junior', 'pleno', 'senior', 'especialista', 'estagiario'),
    primary key (id)
    );
    
    INSERT INTO tb_funcionarios (nome, salario, area, enquadramento) VALUES ("João da Silva", 5000, "financeiro", 'pleno');
    INSERT INTO tb_funcionarios (nome, salario, area, enquadramento) VALUES ("Maria", 1500, "juridico", 'especialista');
	INSERT INTO tb_funcionarios (nome, salario, area, enquadramento) VALUES ("José Oliveira", 2000, "RH", 'estagiario');
	INSERT INTO tb_funcionarios (nome, salario, area, enquadramento) VALUES ("Ana Clara", 7000, "TI", 'junior');
	INSERT INTO tb_funcionarios (nome, salario, area, enquadramento) VALUES ("Alexandra", 5000, "financeiro", 'senior');
    
    SELECT * FROM tb_funcionarios WHERE salario > 2000;
	SELECT * FROM tb_funcionarios WHERE salario < 2000;