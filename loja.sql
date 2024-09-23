drop database if exists loja;
create database if not exists loja;
use loja;

create table clientes (
	id int auto_increment primary key,
    nome varchar(100),
    email varchar(100)
);

create table pedidos (
	id int auto_increment primary key,
    id_cliente int,
    data_pedido date,
    valor decimal(10,2),
    foreign key (id_cliente) references clientes (id)
);

insert into clientes (nome, email) values
('Adilson Kina', 'adilson@email.com'),
('João Germano', 'germano@email.com'),
('Julia Peres', 'juliagames2019@email.com');

insert into pedidos (id_cliente, data_pedido, valor) values
(2, '2024-09-23', 15.00),
(1, '2024-09-22', 85.00),
(3, '2024-09-21', 100.00);

select c.nome, c.email, p.data_pedido, p.valor
from clientes c
inner join pedidos p on c.id = id_cliente;
    