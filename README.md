Sistema de Gestão de Restaurante (Fase I)

 Descrição:
- Este projeto implementa um sistema básico de banco de dados para gerenciar as operações de um restaurante. Ele abrange a gestão de funcionários, clientes, produtos e pedidos, além de associar informações adicionais dos produtos.

Estrutura do Banco de Dados:
  
- funcionarios: Armazena dados dos funcionários, incluindo informações pessoais e detalhes profissionais.

- id_funcionario: Identificador único.
nome, cpf, data_nascimento, endereco, telefone, email, cargo, salario, data_admissao.
clientes: Registra dados dos clientes, permitindo o acompanhamento de interações e histórico.

- id_cliente: Identificador único.
nome, cpf, data_nascimento, endereco, telefone, email, data_cadastro.
produtos: Contém informações dos produtos disponíveis no restaurante.

- id_produto: Identificador único.
nome, descricao, preco, categoria.
pedidos: Gerencia os pedidos realizados, com dados sobre o produto solicitado.

- id_pedido: Identificador único.
nome, descricao, preco, categoria.
info_produtos: Adiciona informações adicionais aos produtos, vinculando dados às suas origens.

- id_info: Identificador único.
- id_produto: Chave estrangeira relacionada à tabela produtos.
ingredientes, fornecedor.

Operações Principais:

- Gestão de Funcionários: Inserção, atualização e consulta dos dados dos funcionários.
- Gestão de Clientes: Registro e consulta dos clientes e suas informações de contato.
- Gestão de Produtos: Controle sobre os produtos disponíveis, suas descrições e preços.
- Gestão de Pedidos: Gerenciamento de pedidos e vinculação ao cliente correspondente.
- Informações dos Produtos: Associar ingredientes e fornecedores aos produtos, mantendo dados precisos.

Requisitos:
- MySQL ou similar para execução do banco de dados.

Como Utilizar:
- Criar o banco de dados e as tabelas com os scripts SQL fornecidos.
- Popule as tabelas com dados relevantes.
- Utilize operações de SQL para manipular e consultar os dados conforme necessário.

Licença:
- Este projeto está sob a licença de Bruno Silveira Guerreiro.

