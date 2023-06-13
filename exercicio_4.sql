#não sei se fiz certo
#Nesse caso utilizamos o 1:1 e o 1:N
create database carros;
use carros;

create table endereco /*tabela B*/ (
id int not null auto_increment primary key,
cidade varchar(30) not null,
estado varchar(30) not null,
rua varchar(40) not null
);

create table comprador /*tabela A*/ (
id int not null auto_increment primary key,
endereco_fk int not null,
nome varchar(100) not null,
borndate date,
email varchar(100) not null,
telefone varchar(11),
foreign key (endereco_fk) references endereco(id)
);

create table carro/*tabela c*/(
id int not null auto_increment primary key,
comprador_fk int not null,
modelo varchar(40) not null,
Ano_aquisição datetime not null default now(),
ano_do_carro varchar(10) not null,
valor varchar(1000) not null,
foreign key (comprador_fk) references comprador(id)
);
