-- 1)
select p.nome, r.pontos from resultados_corrida r right join pilotos p on r.piloto_id = p.id where r.gp = 'GP de Interlagos';

-- 2)
select f.nome as fabricante, e.nome as equipe from equipes e right join fabricantes_motor f on e.motor_id = f.id;

-- 3)
select * from equipes e right join fabricantes_motor f on e.motor_id = f.id where e.motor_id is null or f.id is null;

-- 4)
-- a) A consulta retorna todos os pilotos cadastrados, mostrando o fabricante do motor e a equipe de cada um, quando houver correspondência. Caso não haja correspondência, o fabricante ou a equipe aparecem como nulo
-- b) A consulta retorna somente os pilotos que possuem resultados registrados no GP de Interlagos.
-- c) A consulta retorna as equipes que não possuem nenhum piloto cadastrado.
