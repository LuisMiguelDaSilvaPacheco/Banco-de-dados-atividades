-- 1) O LEFT JOIN faz com que apareçam todas as linhas da tabela da direita, caso elas tenham um correspondente na tabela da direita, ele vai aparecer. Caso não haja um correspondente na tabela da direita, aparecerá como NULL.and

-- 2) Vantagens: Mostra todos os registros da tabela principal; Permite encontrar registros sem correspondência; Facilita a combinação de informações de diferentes tabelas.
-- Desvantagens: Pode retornar valores NULL, que pode afetar tabelas não preparadas; Pode deixar consultas mais difíceis de se enteder; Em tabelas grandes, pode afetar o desempenho.

-- 3)
select * from cliente;

-- 4)
select cliente.nome, loja.valor from cliente left join loja on cliente.id_cliente = loja.id_cliente order by loja.valor asc;

-- 5)
select cliente.nome from cliente order by cliente.nome asc;

-- 6)
select cliente.nome, loja.valor from cliente left join loja on cliente.id_cliente = loja.id_cliente order by loja.valor desc limit 1;

-- 7)
select nome, idade from cliente order by idade desc limit 1;

-- 8) O LEFT JOIN mostra todos os registros da tabela da esquerda, mesmo que não tenham correspondência na outra tabela. Já o INNER JOIN mostra apenas os registros que possuem correspondência nas duas tabelas.
