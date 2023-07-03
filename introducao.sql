#cria o banco de dados
CREATE DATABASE banco_teste;
#coloca o banco em uso
USE banco_teste;

#cria a tabela
CREATE TABLE pessoa(
	nome VARCHAR(50),
    idade INT,
    sexo CHAR(1),
    peso DOUBLE    
);
#senha: Sen@i123 ou Senai@123
#descreve a tabela
desc pessoa;

#insere o produto na tabela
INSERT INTO pessoa VALUES("Maria de lourdes da silva", 33, 'f', 80.65);

INSERT INTO pessoa(nome, idade) VALUES("Luan Ferreira", 33);

INSERT INTO pessoa VALUES("Jose", 65, 'M', 70), 
("Maria", 70, 'F', 56),
("Morgana", 50, 'F', 98),
("Cristiano Ronaldo", 35, 'M', 110);
#pesquisa todos os dados da tabela
SELECT * FROM pessoa;
select * from pessoa;

#selecione apenas o campo nome na tabela pessoa onde a idade for igual a 33
select nome from pessoa where idade = 33;

select sexo from pessoa where nome like "%lourdes%";

select * from pessoa where sexo = 'M' or idade > 33;
select * from pessoa where sexo = 'M' and idade > 33;

select count(*) as "Quantidade  de Pessoas" from pessoa;

select ( 2 + 4);

create table produto(
	descricaoProduto varchar(100),
    #quando há o parenteses indica a quantidade de casas (total) e quantidade de números
    #após a virgular que será mostrado
    preco double(6,2),
    #enum é um tipo de dado com opções pré definidas
    status_pedido enum("entregue", "preparando", "saiu para entrega")
);

#para acessar o dado do enum, podemos usar o nome da opção ou a casa que ele ocupa(indice)
insert into produto values("Sanduba", 15.56, 3);
select * from produto;