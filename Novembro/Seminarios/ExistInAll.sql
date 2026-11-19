CREATE DATABASE loja;
USE loja;
CREATE TABLE clientes (
id INT PRIMARY KEY,
nome VARCHAR(50),
cidade VARCHAR(50),
idade INT
);
CREATE TABLE pedidos (
id INT PRIMARY KEY,
id_cliente INT,
valor DECIMAL(10,2),
FOREIGN KEY (id_cliente) REFERENCES clientes(id)
);
INSERT INTO clientes VALUES
(1, 'Ana', 'Foz', 20),
(2, 'Bruno', 'Curitiba', 25),
(3, 'Carla', 'Foz', 30),
(4, 'Diego', 'Maringa', 18),
(5, 'Eva', 'Curitiba', 35),
(6, 'Fabio', 'Foz', 22);
INSERT INTO pedidos VALUES
(1, 1, 150),
(2, 1, 300),
(3, 2, 500),
(4, 3, 100),
(5, 5, 700);

-- 1)
select nome from clientes where exists(select 1 from pedidos where pedidos.id_cliente = clientes.id);

-- 2)
select nome from clientes where not exists(select 1 from pedidos where pedidos.id_cliente = clientes.id);

-- 3)
select nome from clientes where idade > all(select idade from clientes where cidade = 'Curitiba');

-- 4)
select nome from clientes where idade > some(select idade from clientes where cidade = 'Foz');

-- 5)
select nome from clientes where cidade in('Curitiba', 'Foz');

-- 6)
select nome from clientes where id not in(select id_cliente from pedidos);
