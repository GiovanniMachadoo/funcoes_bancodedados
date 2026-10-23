-- Criacao Tabela Cliente

CREATE DATABASE DB_T05072C_Giovanni_Machado;
use DB_T05072C_Giovanni_Machado;

create table Cliente(
    id_cliente int primary key AUTO_INCREMENT,
    nome_cliente VARCHAR(100) not null,
    telefone VARCHAR(30) not null,
    email VARCHAR(100)
);

-- Criacao Tabela Produto
create table Produto(
    id_produto int primary key AUTO_INCREMENT,
    nome_produto VARCHAR(100) not null,
    tipo_produto VARCHAR(100) not null,
    preço_produto FLOAT(10,2) not null,
    estoque_produto DECIMAL(10,3)

);

-- Mostrar tabelas criadas
show tables;

-- Criacao Tabela Pedido
create table Pedido(
    id_pedido int primary key AUTO_INCREMENT,
    valor_total dec(6,2) not null,
    quantidade dec(5,2) not null,
    id_cliente int,
    id_produto int,
    forma_pagamento VARCHAR (15) not null,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);