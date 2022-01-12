create database db_ecommerce;
use db_ecommerce;

create table tb_produtos (
		id bigint auto_increment,
	nome varchar (255) not null,
    quantidade int not null,
    preco decimal not null,
    tamanho enum('P','M','G', 'GG'),
    primary key (id)
    );
    
    insert into tb_produtos (nome, quantidade, preco, tamanho) VALUES ("Camiseta", 7, 90.00, 'M');
    insert into tb_produtos (nome, quantidade, preco, tamanho) VALUES ("Camiseta", 5, 90.00, 'P');
    insert into tb_produtos (nome, quantidade, preco, tamanho) VALUES ("Camiseta", 10, 90.00, 'G');
    insert into tb_produtos (nome, quantidade, preco, tamanho) VALUES ("Camiseta", 3, 90.00, 'GG');
    
    SELECT * FROM tb_produtos WHERE preco > 500;
    SELECT * FROM tb_produtos WHERE preco < 500;
    
    UPDATE tb_produtos SET preco = 601 WHERE id = 3;