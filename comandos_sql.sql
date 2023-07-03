create database atividade_sql;

use atividade_sql;
#drop table pessoa; comando apaga toda a tabela (tem que recriar caso precise)
create table pessoa(
	nome varchar(100),
    idade int,
    telefone varchar(15),
    endereco varchar(150),
    email varchar(60)    
);

insert into pessoa values("Herculles Morais", 22, "61996185006", "qn 14b conj2, GO, Goiania", "hercullesdk@gmail.com"),
("Kamylla", 26, "6199999", "qn 14b conj2, DF, Brasilia", "kamylla@gmail.com"),
("Ademir", 68, "6199999", "qn 14b conj2, DF, Brasilia", "ademir@gmail.com"),
("Marlucia", 65, "6199999", "qn 14b conj1, DF, Brasilia", null),
("Priscila", 25, "6199999", "qn 14b conj4, AC, Acre", "pricila@gmail.com"),
("Theo", 2, "6199999", "qn 14b conj2, RS, Rio Grande do Sul", "theo@gmail.com"),
("Luck", 10, "6199999", "qn 14b conj6, PB, Paraiba", null),
("Luna", 4, "6199999", "qn 14b conj6, RJ, Rio de Janeiro", "luna@gmail.com"),
("Dexter", 1, "6199999", "qn 14b conj2, DF, Brasilia", "desxter@gmail.com"),
("Joe", 50, "6199999", "qn 14b conj9, TO, Tocantins", "joe@gmail.com"),
("Muller", 76, "6199999", "qn 14b conj2, RJ, Brasilia", null);

insert into pessoa values("Herculles Morais", 22, "619966933", "qn 14b conj2, GO, Goiania", "hercullesdk@gmail.com"),
("Kamylla", 26, "61999996633", null, "kamylla@gmail.com"),
("Ademir", 68, "61999994125", "qn 14b conj2, DF, Brasilia", "ademir@gmail.com"),
("Marlucia", 65, null, "qn 14b conj1, DF, Brasilia", null);



select * from pessoa;
select * from pessoa where endereco like "%qn 14b conj2%"  and idade > 18;

insert into pessoa values("Ademir", 68, "619996666", "qn 14b conj2", "ademir@gmail.com");

select Count(*) as Quantidade from pessoa where endereco like "%rj%" ;
select * from pessoa where idade > 30;


select count(*) as quantidade, nome from pessoa where idade > 15 group by nome;

select nome from pessoa where email is null;

SET SQL_SAFE_UPDATES = 0;
update pessoa set email = 'meuemail@gmail.com' where email is null and nome = "Muller";

select nome, email from pessoa where nome= "Marlucia";

#mostra os dados em ordem alfabetica pelo nome
select * from pessoa order by nome asc;

create table produto(
	nome_do_produto varchar(30),
    preço double
);

alter table produto add quantidade int;

desc produto;

alter table produto drop column preço;

alter table produto rename column nome_do_produto to nomes_dos_produtos;

alter table produto modify column quantidade varchar(50);

select concat(nome, " tem ", idade, " anos") as informacao from pessoa;

delete from pessoa where nome = "Muller";

/*

comentario varias linhas
*/

select count(*) from pessoa;
select * from pessoa;