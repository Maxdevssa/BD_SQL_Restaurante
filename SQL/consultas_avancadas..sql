USE restaurante;

-- Remove a view caso já exista
DROP VIEW IF EXISTS resumo_pedido;

-- Criar a view chamada resumo_pedido
CREATE VIEW resumo_pedido AS SELECT pedidos.id_pedido, pedidos.quantidade, pedidos.data_pedido, clientes.nome AS nome_cliente, clientes.email, funcionarios.nome AS nome_funcionario, produtos.nome AS nome_produto, produtos.preco,
(pedidos.quantidade * produtos.preco) AS total -- Campo total adicionado
FROM pedidos
JOIN clientes ON pedidos.id_cliente = clientes.id_cliente
JOIN funcionarios ON pedidos.id_funcionario = funcionarios.id_funcionario  -- Assumindo que 'pedidos' possui 'id_funcionario'
JOIN produtos ON pedidos.id_produto = produtos.id_produto;
    
    -- 3 - Selecione o id do pedido, nome do cliente e o total (quantidade * preco) de cada pedido da view resumo_pedido
    -- 4 - Atualiza o view resumo pedido, adicionando campo total
SELECT id_pedido, nome_cliente, total 
FROM resumo_pedido;
    
    -- Usar EXPLAIN para verificar a consulta
EXPLAIN SELECT id_pedido, nome_cliente, total 
FROM resumo_pedido;


DROP FUNCTION IF EXISTS BuscaIngredientesProduto;

-- função BuscaIngredientesProduto    
DELIMITER $$
CREATE FUNCTION BuscaIngredientesProduto(produto_id INT) 
RETURNS TEXT
DETERMINISTIC
BEGIN DECLARE ingredientes TEXT;
    SELECT GROUP_CONCAT(ingredientes SEPARATOR ', ') INTO ingredientes
    FROM info_produtos
    WHERE id_produto = produto_id;

    RETURN ingredientes;
END $$

DELIMITER ;

-- Executar a função BuscaIngredientesProduto com o id_produto = 10
SELECT BuscaIngredientesProduto(10) AS ingredientes;


-- media pedido
DELIMITER //

CREATE FUNCTION mediaPedido(pedido_id INT)
RETURNS VARCHAR(255)
DETERMINISTIC
BEGIN
    DECLARE total_pedido DECIMAL(10,2);
    DECLARE media_total DECIMAL(10,2);
    DECLARE resultado VARCHAR(255);

    -- Obter o total do pedido específico
    SELECT SUM(pedidos.quantidade * produtos.preco) INTO total_pedido
    FROM pedidos
    JOIN produtos ON pedidos.id_produto = produtos.id_produto
    WHERE pedidos.id_pedido = pedido_id;

    -- Calcular a média de todos os pedidos
    SELECT AVG(pedidos.quantidade * produtos.preco) INTO media_total
    FROM pedidos
    JOIN produtos ON pedidos.id_produto = produtos.id_produto;

    -- Determinar a mensagem a ser retornada
    IF total_pedido > media_total THEN
        SET resultado = 'O total do pedido é acima da média.';
    ELSEIF total_pedido < media_total THEN
        SET resultado = 'O total do pedido é abaixo da média.';
    ELSE
        SET resultado = 'O total do pedido é igual à média.';
    END IF;

    RETURN resultado;
END //

DELIMITER ;

SELECT mediaPedido(5) AS resultado_pedido_5;
SELECT mediaPedido(6) AS resultado_pedido_6;



