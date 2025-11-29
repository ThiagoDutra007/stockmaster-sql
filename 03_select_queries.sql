USE StockMaster;

SELECT nome, preco FROM Produto
ORDER BY preco DESC;

SELECT p.nome, c.nome AS categoria
FROM Produto p
JOIN Categoria c ON p.categoria_id = c.categoria_id
WHERE c.nome = 'Ferramentas';

SELECT p.nome, e.quantidade
FROM Estoque e
JOIN Produto p ON e.produto_id = p.produto_id
WHERE e.quantidade < 15;

SELECT ped.pedido_id, cli.nome, ped.data_pedido
FROM Pedido ped
JOIN Cliente cli ON ped.cliente_id = cli.cliente_id;

SELECT i.item_id, p.nome, i.quantidade, i.preco_unitario
FROM ItemPedido i
JOIN Produto p ON i.produto_id = p.produto_id
WHERE i.pedido_id = 1;