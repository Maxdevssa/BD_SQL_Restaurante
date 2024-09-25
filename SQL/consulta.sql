USE restaurante; -- questão 1

SELECT nome, categoria FROM produtos WHERE preco > 30; -- questão 2

SELECT nome, telefone, data_nascimento FROM clientes WHERE YEAR(data_nascimento) < 1985; -- questão 3

DESC info_produtos;
SELECT ingredientes FROM info_produtos WHERE ingredientes LIKE '%carne%' LIMIT 1000; -- questão 4

SELECT nome, categoria FROM produtos ORDER BY categoria, nome; -- questão 5

SELECT nome, preco FROM produtos ORDER BY preco DESC LIMIT 5; -- questão 6

SELECT nome FROM produtos WHERE categoria = 'Prato Principal' ORDER BY nome LIMIT 2 OFFSET 6; -- questão 7

CREATE TABLE IF NOT EXISTS backup_pedidos AS SELECT * FROM pedidos; -- questão 8





show tables;


