create database Loja;
use Loja;

CREATE TABLE Vendas (
    ID INT PRIMARY KEY,
    Produto VARCHAR(100),
    Categoria VARCHAR(100),
    Valor INT
);

INSERT INTO Vendas (ID, Produto, Categoria, Valor)
VALUES
(1, 'Mouse', 'Periférico', 50),
(2, 'Teclado', 'Periférico', 120),
(3, 'Monitor', 'Tela', 800),
(4, 'Headset', 'Periférico', 70);

-- a)
select * from Vendas order by Valor desc;

-- b)
select Categoria, avg(Valor) from Vendas group by Categoria;

-- c)
select Categoria, avg(Valor) from Vendas group by Categoria having min(Valor) > 200;

-- d)
select * from Vendas where (select avg(Valor) from Vendas) < Valor;
