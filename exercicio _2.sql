create database empresa;
use empresa;

create table vendedor(
idVendedor int not null auto_increment primary key,
nome_Vendedor varchar(45) not null
);

create table cliente(
idCliente int not null auto_increment primary key,
nome_Cliente varchar(30) not null,
rg_cliente varchar(20) not null
);

create table pedido(
num_Pedido int not null auto_increment primary key,
vendedor_fk int not null,
cliente_fk int not null,
Datapedido datetime not null default now(),
valorPedido numeric(10,2),
foreign key (vendedor_fk) references vendedor(idVendedor),
foreign key (cliente_fk) references cliente(idCliente)
);
