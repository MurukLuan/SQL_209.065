/*
para criar um banco de dados devemos usar o comando 
CREATE DATABASE +  nome do banco
apos a criação devemos colocar o banco em uso usando o comando
USE + nome do banco;
para a criação de tabelas devemos usar o comando CREATE TABLE + nome da tabela
abrir e fechar PARENTSES  e ponto e virgula apos o fecha parenteses;
dentro das chaves colocamos em primeiro o nome do atributo, depois seu tipo
caso hajam mais atributos eles devem ser seprados por virgula;
para realizar uma inserção de dados, usamos o comando 
INSERT INTO + NOME DA TABELA + VALUES ();
dentro do parenteses, a inserção dos dados deve seguir a mesma ordem da criação
da tabela;
para realizar a consulta de uma tabela usamos o comando 
SELECT * FROM + NOME DA TABELA
*/

/*
2
SELECT * FROM = seleciona tudo de uma tabela e mostra todos os dados
insert into values = insere os dados em uma tabela
concat = concatena os atributos com conjunto de caracteres
count() = realiza a contagem de determinado atributo de uma tabela
*/

#3.crie um banco de dados para salvar dados de produto
#a tabela produto de possuir: descricao, unidade de medida, valor unit, qtd
#cadastrar 5 produtos
#mostrar uma mensagem concatenando os atributos


CREATE DATABASE exercicio_produto;
use exercicio_produto;

create table produto(
	descricao varchar(100),
    unidade_medida enum("und", "lts", "mts"),
    valor_unitario double,
    quantidade int
);

insert into produto values("pendrive", 1, 15.00, 10),
("leite", 2, 6.56, 100),
("chocolate", "und", 12.00, 50),
("todinho", "lts", 2.50, 200),
("Chá verde", 2, 6.00, 350);

select * from produto;

select concat ("há ", quantidade, " ", descricao,
 " no estoque, com valor unitário de ", valor_unitario , " reais")
 as "mostrar dados" from produto;

#concat : o produto * tem a unidade de media *
select concat("O produto ", descricao, 
" tem a unidade de medida: ", unidade_medida) as informacao from produto;
