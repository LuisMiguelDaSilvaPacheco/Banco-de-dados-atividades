-- 1)
select count(*) as quantidadeJogadores from jogadores;
select distinct(clube) from jogadores;

-- 2)
select max(gols) from jogadores;
select min(assistencias) from jogadores;

-- 3)
select sum(valor_milhoes) from jogadores;
select avg(valor_milhoes) from jogadores;
-- O valor total soma todos os valores, já o valor médio soma todos os valores e então divide pela quantidade de valores somados

-- 4)
-- a) Ela está acima da média.
-- b) A oferta está justa, já que está acima da média, o que é vantajoso para o jogador, mas também está abaixo do maximo, o que é vantajoso ao time também
--  porém o valor exato deveria ser avaliado com base na quantidade de gols, assistencias e tempo de contrato.
