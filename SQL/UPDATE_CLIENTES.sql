USE informatica;

SELECT * FROM clientes;

-- Atualizar campo 1
UPDATE clientes
SET email = 'marcos_novoemail@gmail.com'
WHERE id_cliente = 1;

-- Atualizar múltiplos campos
UPDATE clientes
SET data_nascimento = '1983-08-09', limite_credito = 5000
WHERE id_cliente = 2;

-- Atualizar com operadores matemáticos
UPDATE clientes
SET limite_credito = limite_credito + 500 
WHERE id_cliente = 3;

-- Desativar Safe Update Mode
SET SQL_SAFE_UPDATES = 0;

-- Atualizar todos os registros da coluna
UPDATE clientes
SET info_adicionado = 'Revisão de cadastro';

-- Reativar Safe Update Mode (opcional)
SET SQL_SAFE_UPDATES = 1;











