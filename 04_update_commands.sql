USE StockMaster;

UPDATE Produto
SET preco = 209.90
WHERE produto_id = 1;

UPDATE Estoque
SET quantidade = quantidade + 5
WHERE produto_id = 3;

UPDATE Fornecedor
SET email = 'suporte@fornecminas.com'
WHERE fornecedor_id = 1;