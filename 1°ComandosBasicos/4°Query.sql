-- EXEMPLOS ########################################################################

-- (Exemplo 1) Ordenação de valores numéricos
-- Liste produtos da tabela products na ordem crescente com base no preço
SELECT brand,model,product_id,price
FROM sales.products
ORDER BY price ;

-- (Exemplo 2) Ordenação de texto
-- Liste os estados distintos da tabela customers na ordem crescente
SELECT DISTINCT state 
FROM sales.customers
ORDER BY state;