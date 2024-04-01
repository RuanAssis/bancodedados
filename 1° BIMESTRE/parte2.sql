use sistema_ecommerce;

select * from cliente;
insert into cliente values
(null, 'cliente1', 'Rua A, 123', 'cliente1@gmail.com', 5511111111111, '2000-01-01'),
(null, 'cliente2', 'Rua B, 456', 'cliente2@gmail.com', 5511222222222, '2000-02-01'),
(null, 'cliente3', 'Rua C, 789', 'cliente3@gmail.com', 5511333333333, '2000-03-01'),
(null, 'cliente4', 'Rua D, 123', 'cliente4@gmail.com', 5511444444444, '2000-04-01'),
(null, 'cliente5', 'Rua E, 456', 'cliente5@gmail.com', 5511555555555, '2000-05-01'),
(null, 'cliente6', 'Rua F, 789', 'cliente6@gmail.com', 5511666666666, '2000-06-01'),
(null, 'cliente7', 'Rua G, 123', 'cliente7@gmail.com', 5511777777777, '2000-07-01'),
(null, 'cliente8', 'Rua H, 456', 'cliente8@gmail.com', 5511888888888, '2000-08-01'),
(null, 'cliente9', 'Rua I, 789', 'cliente9@gmail.com', 5511999999999, '2000-09-01'),
(null, 'cliente10', 'Rua J, 123', 'cliente10@gmail.com', 551110000000, '2000-10-01');

select * from produto;
insert into produto values
(null, 'nomep1', 19.99, 'descrição 1', 50),
(null, 'nomep2', 129.99, 'descrição 2', 30),
(null, 'nomep3', 99.99, 'descrição 3', 20),
(null, 'nomep4', 59.99, 'descrição 4', 40),
(null, 'nomep5', 49.99, 'descrição 5', 25),
(null, 'nomep6', 79.99, 'descrição 6', 12),
(null, 'nomep7', 29.99, 'descrição 7', 33),
(null, 'nomep8', 429.99, 'descrição 8', 49),
(null, 'nomep9', 219.99, 'descrição 9', 30),
(null, 'nomep10', 29.99, 'descrição 10', 28);

select * from pedidos;
insert into pedidos values
(null, 1, '2000-01-01', '500.00', '2023-01-10'),
(null, 2, '2020-02-01', '30.00', '2023-02-10'),
(null, 3, '2020-03-01', '80.00', '2023-03-10'),
(null, 4, '2020-04-01', '90.00', '2023-04-10'),
(null, 5, '2020-05-01', '112.00', '2023-05-10'),
(null, 6, '2020-06-01', '98.00', '2023-06-10'),
(null, 7, '2020-07-01', '145.00', '2023-07-10'),
(null, 8, '2020-08-01', '1000.00', '2023-08-10'),
(null, 9, '2020-09-01', '450.00', '2023-09-10'),
(null, 10, '2020-10-01', '320.00', '2023-10-10');

select * from itemPedido;
insert into itemPedido values
(null, 1, 1, '2', '99.00', '1100.00'),
(null, 2, 2, '12', '100.00', '250.00'),
(null, 3, 3, '3', '110.00', '600.00'),
(null, 4, 4, '4', '120.00', '650.00'),
(null, 5, 5, '10', '130.00', '420.00'),
(null, 6, 6, '11', '140.00', '250.00'),
(null, 7, 7, '1', '150.00', '230.00'),
(null, 8, 8, '2', '160.00', '2300.00'),
(null, 9, 9, '3', '170.00', '260.00'),
(null, 10, 10, '10', '180.00', '1500.00');

update cliente set celular = '5511101010101' where id_cliente = 12;
update produto set quantidade_estoque = 12 where id_produto = 3;
update pedidos set valor_total = 1000.00 where numero_pedido = 7;
update itemPedido set quantidade = 3 where id_item = 1;

delete from produto where id_produto = 5;
delete from produto where id_produto = 8;
