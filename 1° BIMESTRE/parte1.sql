create database sistema_ecommerce;
use sistema_ecommerce;

create table cliente(
	id_cliente int primary key auto_increment,
    nome varchar(100) not null,
    endereço varchar(200) not null,
    email varchar(100) not null,
    celular bigint(14) not null,
    data_de_nascimento date not null
);

create table produto(
	id_produto int primary key auto_increment,
    nome varchar(100) not null,
    preço decimal(10,2) unsigned not null,
    descrição text,
    quantidade_estoque int unsigned not null
);

create table pedidos(
	numero_pedido int primary key auto_increment,
    id_cliente int,
    data_compra date not null,
    valor_total decimal(10,2) unsigned not null,
    data_estimada date,
    foreign key(id_cliente) references Cliente(id_cliente)
);

create table itemPedido (
    id_item int primary key auto_increment,
    numero_pedido int,
    id_produto int, 
    quantidade int unsigned not null,
    valor_unitario decimal(10,2) unsigned not null,
    valor_total decimal(10,2) unsigned not null,
    foreign key (numero_pedido) references Pedidos(numero_pedido),
    foreign key (id_produto) references Produto(id_produto)
);