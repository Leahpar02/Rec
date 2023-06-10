create database farmacia;
use farmacia;

create table fornecedor(
idFornecedor int not null auto_increment primary key,
nomeFornecedor varchar(45) not null
);

create table principioAtivo(
idPrincipioAtivo int not null auto_increment primary key,
nomePrincipioAtivo varchar(45) not null
);

create table Medicamento(
idMedicamento int not null auto_increment primary key,
principio_fk int not null,
fornecedor_fk int not null,
nomeComercial varchar(60) not null,
QtdeEstoque int not null,
foreign key (principio_fk) references principioAtivo(idPrincipioAtivo),
foreign key (fornecedor_fk) references fornecedor(idFornecedor)
);
