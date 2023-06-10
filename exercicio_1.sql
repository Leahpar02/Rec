create database banco;
use banco;

create table usuario(
id int not null auto_increment primary key,
nome varchar(100) not null,
email varchar(100) not null,
data_nascimento date not null,
CEP varchar(9) not null
);

create table conta_bancaria(
id int not null auto_increment primary key,
usuario_fk int not null,
nome_Banco varchar(100) not null,
agencia varchar(20) not null,
conta_corrente varchar(50) not null,
foreign key (usuario_fk) references usuario(id)
);
