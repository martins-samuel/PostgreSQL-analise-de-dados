-- EXEMPLOS ########################################################################

-- (Exemplo 1) Uso de operadores como flag
-- Crie uma coluna que retorne TRUE sempre que um cliente for um profissional clt 
select
    customer_id,
    first_name,
    professional_status,
	(professional_status = 'clt') as ClienteCLT 
from sales.customers;
