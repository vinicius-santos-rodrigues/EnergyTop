-- 1. Listar todos os clientes
SELECT * FROM CLIENTES;

-- 2. Veículos de Maria Souza
SELECT v.modelo, v.ano, v.placa
FROM VEICULO v
JOIN CLIENTES c ON v.id_cliente = c.id_cliente
WHERE c.nome = 'Maria Souza';

-- 3. Vendas acima de 500 ordenadas por data
SELECT id_venda, valor_total, data
FROM VENDA
WHERE valor_total > 500
ORDER BY data DESC;

-- 4. Itens de venda com nome da bateria
SELECT iv.id_item_venda, b.modelo, iv.quantidade, iv.preco_unitario
FROM ITEMVENDA iv
JOIN BATERIA b ON iv.id_bateria = b.id_bateria;

-- 5. Dois primeiros clientes cadastrados
SELECT * FROM CLIENTES LIMIT 2;