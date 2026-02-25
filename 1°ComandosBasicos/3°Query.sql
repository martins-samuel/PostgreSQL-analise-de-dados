-- EXEMPLOS ########################################################################

-- (Exemplo 1) Filtro com condição única
-- Liste os emails dos clientes da nossa base que moram no estado de Santa Catarina
SELECT email,STATE
FROM sales.customers
WHERE state = 'SC';


-- (Exemplo 2) Filtro com mais de uma condição
-- Liste os emails dos clientes da nossa base que moram no estado de Santa Catarina
-- ou Mato Grosso do Sul
SELECT email, state
FROM sales.customers
WHERE state = 'SC' OR state = 'MS';

-- (Exemplo 3) Filtro de condição com data
-- Liste os emails dos clientes da nossa base que moram no estado de Santa Catarina 
-- ou Mato Grosso do Sul e que tem mais de 30 anos

SELECT email,state,birth_date
FROM sales.customers
WHERE (state = 'SC' OR state = 'MS') AND birth_date < '1996-02-22' ;