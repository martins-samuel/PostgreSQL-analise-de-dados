-- EXEMPLOS ########################################################################

-- (Exemplo 1) seleção com filtro no HAVING 
-- Calcule o nº de clientes por estado filtrando apenas estados acima de 100 clientes
select 
    state, 
    count(*)
from sales.customers
group by state;

SELECT state,count(*)
FROM sales.customers
GROUP BY state 
HAVING count(*) > 100;

