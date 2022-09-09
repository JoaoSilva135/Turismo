create database bdOreon;
use bdOreon;

create table tbCliente(
cd_cli int primary key auto_increment,
nome varchar(80),
idade char(3),
sexo varchar(2),
email varchar(80),
telefone char(11)
);

create table tbPlanos(
cd_plano int primary key auto_increment,
tipo varchar(80),
descricao varchar(80)
);

create table tbPedido(
cd_pedido int primary key auto_increment,
cd_plano int,
cd_cli int,
dt_pedido varchar(8),
hora varchar(4),
valor decimal(10,2),
descricao varchar(80) 
);