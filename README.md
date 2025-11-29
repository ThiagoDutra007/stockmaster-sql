📘 StockMaster SQL — Scripts de Manipulação de Dados (DML)

Este repositório contém os scripts SQL desenvolvidos para a quarta parte da atividade prática da disciplina de Banco de Dados, aplicando conceitos de modelagem lógica, integridade referencial, DML e uso de ferramentas reais (MySQL Workbench).

O objetivo é demonstrar a capacidade de criar, manipular e consultar dados em um banco relacional, integrando teoria e prática em um mini-mundo simples, porém funcional.

📌 Conteúdo do Repositório
📁 stockmaster-sql/
│
├── README.md                 → Documentação completa
├── inserts.sql               → Scripts de INSERT para povoamento das tabelas
├── selects.sql               → Consultas SELECT com filtros, JOIN e ordenação
├── updates_deletes.sql       → Comandos UPDATE e DELETE com condições reais
└── sql_scripts/              → Pasta opcional com versões organizadas dos scripts

🏗️ Mini-Mundo do Projeto

O mini-mundo representa um sistema básico de gestão de estoque, contendo entidades típicas como:

Produto

Categoria

Fornecedor

Estoque

Movimentação de Estoque

As tabelas foram modeladas previamente na parte 3 da atividade (Projeto Lógico), e agora são manipuladas com comandos SQL.

💾 Scripts Incluídos
1️⃣ INSERT — Povoamento Inicial

Arquivo: inserts.sql

Contém comandos para inserir registros essenciais nas principais tabelas do sistema:

Categorias

Produtos

Fornecedores

Estoque inicial

Objetivo: permitir que o banco seja iniciado rapidamente com dados reais para testes.

2️⃣ SELECT — Consultas com Filtros e Relacionamentos

Arquivo: selects.sql

As consultas incluem:

✔ SELECT simples
✔ WHERE com filtros
✔ ORDER BY para ordenação
✔ LIMIT para limitar resultados
✔ INNER JOIN entre tabelas relacionadas

Essas consultas simulam operações reais, como:

Listar produtos por categoria

Buscar estoque baixo

Consultar produtos e seus fornecedores

3️⃣ UPDATE & DELETE — Manipulação e Limpeza

Arquivo: updates_deletes.sql

Inclui:

✔ 3 comandos UPDATE
✔ 3 comandos DELETE
✔ Todos com condições (WHERE)

Situações reais simuladas:

Atualizar preços

Alterar estoque

Excluir produtos descontinuados

Remover fornecedores inativos

🛠️ Ferramentas Utilizadas

MySQL Workbench

MySQL Community Server

Git

GitHub

🚀 Como Executar os Scripts
1. Clone o repositório
git clone https://github.com/ThiagoDutra007/stockmaster-sql.git

2. Abra o MySQL Workbench
3. Importe ou execute os scripts

Na ordem:

inserts.sql

selects.sql

updates_deletes.sql

🎯 Objetivos de Aprendizagem Atendidos
Taxonomia de Bloom

✔ Aplicar comandos SQL reais
✔ Criar scripts completos de manipulação

Taxonomia de Fink

✔ Aplicação: uso real do MySQL Workbench
✔ Integração: modelo lógico + DML
✔ Aprender a aprender: resolução de erros SQL

👤 Autor

Thiago Dutra
Atividade Prática — Banco de Dados
Curso: Análise e Desenvolvimento de Sistemas

📄 Licença

Este repositório é de uso acadêmico.
Sinta-se à vontade para estudar, adaptar ou expandir.
