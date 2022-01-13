CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
	classeId bigint auto_increment,
    nomeJogador varchar(255) not null,
	equipamentoUtilizado enum ('balestra','lança', 'arco', 'espada', 'sem equipamento') not null,
	classificacaoNoJogo int not null, 
    jogadorFrequente enum ('sim', 'não') not null,
    primary key (classeId)
    );
INSERT INTO tb_classe(nomeJogador, equipamentoUtilizado, classificacaoNoJogo, jogadorFrequente) VALUES ("Player1", 'balestra', 10, 'não');
INSERT INTO tb_classe(nomeJogador, equipamentoUtilizado, classificacaoNoJogo, jogadorFrequente) VALUES ("Player2", 'lança', 8, 'sim');
INSERT INTO tb_classe(nomeJogador, equipamentoUtilizado, classificacaoNoJogo, jogadorFrequente) VALUES ("Player3", 'arco', 2, 'sim');
INSERT INTO tb_classe(nomeJogador, equipamentoUtilizado, classificacaoNoJogo, jogadorFrequente) VALUES ("Player4", 'espada', 5, 'sim');
INSERT INTO tb_classe(nomeJogador, equipamentoUtilizado, classificacaoNoJogo, jogadorFrequente) VALUES ("Player5", 'sem equipamento', 100, 'não');


CREATE TABLE tb_personagem(
	personagemId bigint auto_increment,
    nomePersonagem varchar(255) not null,
	poderDeAtaque int not null,
    poderDeDefesa int not null,
	classificacaoDoPersonagem enum( 'DPS', 'Tank', 'Cura')  not null, 
    skin varchar(255) not null,
    mortes int not null, 
    classeId bigint not null,
    primary key (personagemId),
	foreign key (classeId) REFERENCES tb_classe (classeId)
    );
    
    INSERT INTO tb_personagem(nomePersonagem, poderDeAtaque, poderDeDefesa, classificacaoDoPersonagem, skin, mortes, classeID) VALUES ("Arqueiro", 5000, 1500, 'DPS', "Natal", 1, 1);
    INSERT INTO tb_personagem(nomePersonagem, poderDeAtaque, poderDeDefesa, classificacaoDoPersonagem, skin, mortes, classeID) VALUES ("Lançador", 8000, 3000, 'Tank', "Natal", 3, 3);
    INSERT INTO tb_personagem(nomePersonagem, poderDeAtaque, poderDeDefesa, classificacaoDoPersonagem, skin, mortes, classeID) VALUES ("Corredor", 900, 1500, 'DPS', "Páscoa", 8, 5);
    INSERT INTO tb_personagem(nomePersonagem, poderDeAtaque, poderDeDefesa, classificacaoDoPersonagem, skin, mortes, classeID) VALUES ("Salvador", 745, 8000, 'Cura', "Ano Novo", 6, 2);
    INSERT INTO tb_personagem(nomePersonagem, poderDeAtaque, poderDeDefesa, classificacaoDoPersonagem, skin, mortes, classeID) VALUES ("Incendiador", 200, 1000,'Tank', "Festa Junina", 1, 6);
    INSERT INTO tb_personagem(nomePersonagem, poderDeAtaque, poderDeDefesa, classificacaoDoPersonagem, skin, mortes, classeID) VALUES ("Atirador", 9800, 7000, 'Cura', "Aniversário", 20, 4);
    INSERT INTO tb_personagem(nomePersonagem, poderDeAtaque, poderDeDefesa, classificacaoDoPersonagem, skin, mortes, classeID) VALUES ("Arqueiro", 5000, 4000,'DPS', "Padrão", 0, 0);
    INSERT INTO tb_personagem(nomePersonagem, poderDeAtaque, poderDeDefesa, classificacaoDoPersonagem, skin, mortes, classeID) VALUES ("Lançador", 800, 6000, 'Tank', "Praia", 1, 0);

SELECT * FROM tb_personagem WHERE poderDeAtaque > 2000;
SELECT * FROM tb_personagem  WHERE poderDeDefesa > 1000 and poderDeDefesa < 2000;

SELECT * FROM tb_personagem WHERE nomePersonagem LIKE '%c%';

SELECT * FROM tb_personagem INNER JOIN tb_classe ON tb_personagem.classeId = tb_classe.classeId;

SELECT * FROM tb_personagem WHERE classificacaoDoPersonagem = "DPS";

