-- EXEMPLOS ########################################################################

-- (Exemplo 1) Criação de coluna calculada
-- Crie uma coluna contendo a idade do cliente da tabela sales.customers
SELECT first_name,birth_date,
(current_date - birth_date) / 365 as idade_do_cliente
FROM sales.customers ;


-- (Exemplo 2) Utilização da coluna calculada nas queries
-- Liste os 10 clientes mais novos da tabela customers
SELECT first_name,birth_date,
(current_date - birth_date)/ 365 as idade_do_cliente
FROM sales.customers 
ORDER BY idade_do_cliente 
LIMIT 10;

-- (Exemplo 3) Criação de coluna calculada com strings 
-- Crie a coluna "nome_completo" contendo o nome completo do cliente
select
	first_name || ' ' || last_name as nome_completo
from sales.customers