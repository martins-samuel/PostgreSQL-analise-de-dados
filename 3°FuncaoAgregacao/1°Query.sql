-- EXEMPLOS ########################################################################

-- COUNT() -------------------------------------------------------------------------

-- (Exemplo 1) Contagem de todas as linhas de uma tabela
-- Conte todas as visitas realizadas ao site da empresa fictícia
SELECT COUNT(*)
FROM sales.funnel;

-- (Exemplo 2) Contagem das linhas de uma coluna
-- Conte todos os pagamentos registrados na tabela sales.funnel 
SELECT COUNT(paind_date)
FROM sales.funnel;


-- (Exemplo 3) Contagem distinta de uma coluna
-- Conte todos os produtos distintos visitados em jan/21
SELECT COUNT(DISTINCT product_id)
FROM sales.funnel 
WHERE visit_page_date BETWEEN '2021-01-01' AND '2021-01-31';

-- OUTRAS FUNÇÕES ------------------------------------------------------------------

-- (Exemplo 4) Calcule o preço mínimo, máximo e médio dos productos da tabela products
SELECT MAX(price),
MIN(price),
AVG(price)
FROM sales.products;

-- (Exemplo 5) Informe qual é o veículo mais caro da tabela products

SELECT *
FROM sales.products 
WHERE price = (SELECT MAX(price)
FROM sales.products);
