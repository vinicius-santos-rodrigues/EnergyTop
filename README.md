# Projeto SQL — Banco de Baterias com SQLiteStudio
Este projeto tem como objetivo aplicar os conceitos de modelagem de dados, normalização e manipulação de dados com SQL, utilizando o ambiente SQLiteStudio para simular um sistema de vendas de baterias automotivas.

Estrutura do Banco de Dados
O banco é composto pelas seguintes tabelas:
- CLIENTES: cadastro de clientes
- VEICULO: veículos vinculados aos clientes
- FUNCIONARIO: funcionários que realizam vendas
- VENDA: registro de vendas realizadas
- BATERIA: estoque de baterias disponíveis
- ITEMVENDA: itens vendidos em cada venda
Todas as tabelas foram normalizadas até a Forma Normal de Boyce-Codd (BCNF).

Ferramenta utilizada
- SQLiteStudio


Aprendizados aplicados
- Criação de banco relacional com integridade referencial
- Normalização até BCNF
- Manipulação de dados com DML (INSERT, SELECT, UPDATE, DELETE)
- Uso de joins e filtros em consultas
- Tratamento de erros e mensagens do SQLiteStudio

  
Scripts incluídos

- `Criar_Tabelas.sql`: Criação das tabelas com chaves primárias e estrangeiras
- `INSERT.sql`: Povoamento das tabelas principais
- `SELECT.sql`: Consultas com JOIN, WHERE, ORDER BY, LIMIT
- `UPDATE.sql`: Atualizações condicionais
- `DELETE.sql`: Exclusões com segurança


Como executar os scripts no SQLiteStudio

1. Abra o SQLiteStudio
2. Crie um novo banco de dados (`banco_baterias.db`)
3. Vá em `Tools → Open SQL Editor`
4. Cole e execute os scripts na ordem:
   - `Criar_Tabelas.sql`
   - `INSERT.sql`
   - `SELECT.sql`, `UPDATE.sql`, `DELETE.sql`
