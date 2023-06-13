create database firma;
use firma;

create table funcionarios(
id int not null auto_increment primary key,
dataNascimento date not null,
cpf varchar(11) not null,
salario_atual varchar(1000),
genero enum("M", "F")
);

create table projeto(
id int not null auto_increment primary key,
reponsavel int not null,
nome varchar(100) not null,
dataInicio datetime not null default now(),
dataFim datetime,
foreign key (resonsavel) references funcionarios(id)
);

create table departamento(
id int not null auto_increment primary key,
funcionariosFK int not null,
nome varchar(100) not null,
foreign key (funcionariosFK) references funcionarios(id)
);

create table cargo(
id int not null auto_increment primary key,
nome varchar(100) not null,
funcionariosFK int not null,
foreign key (funcionariosFK) references funcionarios(id)
);

create table cliente(
id int not null auto_increment primary key,
projetoFK int not null,
nome varchar(100) not null,
CNPJ varchar (100) not null,
foreign key (projetoFK) references projeto(id)
);
