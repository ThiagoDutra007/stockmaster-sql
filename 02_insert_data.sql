USE StockMaster;

INSERT INTO Categoria (nome, descricao) VALUES
('Ferramentas', 'Itens usados para reparo e construção'),
('Eletrônicos', 'Cabos, adaptadores e componentes');

INSERT INTO Fornecedor (nome, cnpj_cpf, contato, telefone, email, endereco) VALUES
('Fornec Minas', '12.345.678/0001-90', 'Carlos Silva', '31999998888', 'contato@fornecminas.com', 'Rua A, nº 100'),
('TechBrasil', '98.765.432/0001-55', 'Ana Santos', '31988887777', 'vendas@techbrasil.com', 'Rua B, nº 200');

INSERT INTO Produto (nome, descricao, preco, categoria_id, fornecedor_id) VALUES
('Furadeira 500W', 'Furadeira de impacto 500W', 199.90, 1, 1),
('Chave Philips', 'Chave de fenda tipo philips', 14.90, 1, 1),
('Cabo HDMI 2m', 'Cabo HDMI alta qualidade', 39.90, 2, 2);

INSERT INTO Estoque (produto_id, quantidade, localizacao) VALUES
(1, 10, 'A1'),
(2, 30, 'A2'),
(3, 25, 'B1');

INSERT INTO Cliente (nome, telefone, email) VALUES
('João Pereira', '31999998877', 'joao@gmail.com'),
('Marcos Lima', '31988884455', 'marcos@hotmail.com');

INSERT INTO Pedido (cliente_id, data_pedido) VALUES
(1, '2025-11-01'),
(2, '2025-11-02');

INSERT INTO ItemPedido (pedido_id, produto_id, quantidade, preco_unitario) VALUES
(1, 1, 1, 199.90),
(1, 3, 2, 39.90),
(2, 2, 3, 14.90);