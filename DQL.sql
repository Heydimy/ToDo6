select * from produtos order by precoVenda desc limit 3;

select clienteId, count(clienteId) from avaliacao group by clienteId;

select produtoId, avg(notaAvaliacao) from avaliacao group by produtoId;

select produtoId, dataAvaliacao from avaliacao order by dataAvaliacao desc;

select * from clientes where nomeCliente like 'Joana%';

select produtoId, avg(notaAvaliacao) as aval from avaliacao group by produtoId order by aval limit 1;

select produtoId as Avaliação_desatualizada from avaliacao where dataAvaliacao <= now()- interval 30 day;



select * from avaliacao