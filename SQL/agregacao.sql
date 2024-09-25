USE restaurante;

-- Contar o número total de pedidos
SELECT COUNT(*) AS quantidade_pedidos FROM pedidos;

-- Contar o número de clientes distintos que têm pedidos
SELECT COUNT(DISTINCT id_cliente) AS quantidade_clientes_unicos FROM pedidos;

-- Calcular a média de preço dos produtos
SELECT AVG(preco) AS media_precos_produtos 
FROM produtos;

-- Calcular o preço mínimo e máximo dos produtos
SELECT MIN(preco) AS preco_minimo, MAX(preco) AS preco_maximo FROM produtos;

-- Selecionar o nome e o preço do produto e fazer um ranking dos 5 produtos mais caros
SELECT nome, preco FROM produtos ORDER BY preco DESC LIMIT 5;

-- Selecionar a média dos preços dos produtos agrupados por categoria
SELECT categoria, AVG(preco) AS media_preco FROM produtos GROUP BY categoria;

-- Selecionar o fornecedor e a quantidade de produtos que vieram daquele fornecedor
SELECT fornecedor, COUNT(id_produto) AS quantidade_produtos FROM info_produtos GROUP BY fornecedor;

-- Selecionar os fornecedores que possuem mais de um produto cadastrado
SELECT fornecedor, COUNT(id_produto) AS quantidade_produtos FROM info_produtos GROUP BY fornecedor HAVING COUNT(id_produto) > 1;

-- Selecionar os clientes que realizaram apenas 1 pedido
SELECT id_cliente, COUNT(id_pedido) AS quantidade_pedidos FROM pedidos GROUP BY id_cliente HAVING COUNT(id_pedido) = 1;