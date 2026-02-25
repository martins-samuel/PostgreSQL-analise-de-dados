-- EXEMPLOS ########################################################################

-- (Exemplo 1) Contagem agrupada de uma coluna
-- Calcule o nº de clientes da tabela customers por estado
select count(*)
from sales.customers;

SELECT COUNT(*),state
FROM sales.customers
GROUP BY state
ORDER BY state;

-- (Exemplo 2) Contagem agrupada de várias colunas
-- Calcule o nº de clientes por estado e status profissional 
SELECT COUNT(*) as contagem,professional_status
FROM sales.customers
GROUP BY state,professional_status
ORDER BY state, contagem DESC;

-- (Exemplo 3) Seleção de valores distintos
-- Selecione os estados distintos na tabela customers utilizando o group by
select distinct state
from sales.customers;

SELECT state
FROM sales.customers
GROUP BY state;
