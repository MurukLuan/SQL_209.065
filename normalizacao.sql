CREATE DATABASE normalizacao;
use normalizacao;
/*
para uma tabela estar na primeira forma normal, 
é necessario que não existam grupos de valores repetidos,
seus valores devem ser atomicos (unicos) e a tabela
deve possui um identificador que identifique o dado
como único
*/

create table pessoa(
	id integer primary key auto_increment,
	nome varchar(30),
    sobrenome varchar(50),
    idade int,
    sexo varchar(15),
    email varchar(100),
    cpf varchar(14) not null unique,
    cidade varchar(50),
    bairro varchar(50),
    cep varchar(10),
    complemento varchar(100),
    logradouro varchar(100),
    estado varchar(50),
    uf char(2),
    numero varchar(10),
    telefone varchar(16),
    ddd char(3),
    celular varchar(16),
    fixo varchar(16),
    comercial varchar(16)
);
insert into pessoa values(
null, 
"Luan",
"Muruk",
33,
"M",
"luan@emailfake.com.br",
"123.456.789-10",
"Brasilia",
"não sei",
"77300-900",
"senai",
"SIG alguma coisa",
"Distrito Federal",
"DF",
"10A",
"98552-6633",
"061",
null,
null,
null
);
select * from pessoa;


/*
Para estar na segunda forma normal os atributos devem
depender da chave primaria em sua totalidade
não apenas parte dela
*/


create table pessoa2(
	idPessoa integer primary key auto_increment,
    nome varchar(50),
    sobrenome varchar(50),
    cpf varchar(14) not null unique,
    sexo varchar(10),
     id_endereco integer,
    constraint fk_id_endereco_endereco 
    foreign key (id_endereco) references endereco(idEndereco)
);

create table endereco(
	idEndereco integer primary key auto_increment,
    cep varchar(13),
    bairro varchar(100),
    cidade varchar(100),
    uf char(2)
);

insert into endereco values(null, "73000-101", "SIG 3", "brasilia", "df");
insert into pessoa2 values(null, "Homem", "Aranha", "144.456.789-00", "M", 2);


select * from pessoa2;
select * from endereco;

drop table pessoa2;
drop table endereco;

select * from endereco inner join 
pessoa2 on endereco.idEndereco = pessoa2.id_endereco;

select nome, cpf, cep, bairro, cidade, uf from pessoa2
inner join endereco on pessoa2.id_endereco = endereco.IdEndereco;

create table telefone(
	idtelefone integer primary key auto_increment,
    ddd varchar(5),
    numero varchar(10),
    id_pessoa integer,
    constraint fk_id_pessoa_pessoa 
    foreign key (id_pessoa) references pessoa2(idPessoa)
);

insert into telefone values (null, "061", "88888-9999", 1),
(null, "061", "88888-9998", 1),
(null, "062", "88877-9999", 3),
(null, "063", "88866-9963", 4);

/*
Para a tabela estar na terceira forma normal 
ela precisa estar de acordo com a 1ª e 2ª forma normal
não existir dependencias transitivas
Nenhum atributo não chave não pode depender de outro atributo não chave
*/

create table produto(
	idProduto integer primary key auto_increment,
    nome_produto varchar(50),
    quantidade int,
    valor double
);

