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
dt_pedido varchar(10),
hora varchar(5),
valor decimal(10,2),
descricao varchar(80) 
);

insert into tbCliente(nome,idade,sexo,email,telefone)
values ('Victor','19','M','victor@gmailcom','11940028922');

insert into tbCliente(nome,idade,sexo,email,telefone)
values ('Samuel','15','M','samuel@gmail.com','11955923680');

insert into tbPlanos (tipo, descricao) 
values ('Viagem Simples','Viaje para até 2 estados sem custo adicional');

insert into tbPlanos (tipo, descricao)
values ('Viagem Completa',' Viaje para dois 2 estados e um país estrangeiro de sua escolha');

insert into tbPedido (cd_plano, cd_cli, dt_pedido, hora, valor, descricao)
values ('1','2','10-09-2022','13:30','30.000','parcelado');

insert into tbPedido (cd_plano, cd_cli, dt_pedido, hora, valor, descricao)
values ('2','1','26-06-2031','05:00','70.000','pago a vista');

update tbCliente set nome = 'Vitória', idade = '21',  sexo = 'F',  email = 'vitoria123@gmail', telefone = '11987651234' where cd_cli = 2;

update tbCliente set nome = 'Joao',  idade = '20',  sexo = 'M',  email = 'joao@hotmail.com',  telefone = '11987651234' where cd_cli = 3;

update tbCliente set nome = 'Amanda', idade = '18',  sexo = 'F', email = 'amanda3@gmail',  telefone = '11987651234' where cd_cli = 4;


select 
tbCliente.nome,
tbCliente.idade,
tbCliente.email,
tbCliente.telefone,
tbPlanos.tipo,
tbPedido.dt_pedido,
tbPedido.hora,
tbPedido.valor,
tbPedido.descricao
from tbCliente inner join tbPedido on tbCliente.cd_cli = tbPedido.cd_cli
inner join tbPlanos on tbPlanos.cd_plano = tbPedido.cd_plano;