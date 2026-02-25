-- EXERCÍCIOS ########################################################################

-- (Exercício 1) Identifique quais as marcas de veículo mais visitada na tabela sales.funnel
SELECT pro.brand,
COUNT (fun.visit_page_date) as visitadas
FROM sales.funnel AS fun
LEFT JOIN sales.products as pro	
	ON fun.product_id = pro.product_id 
GROUP BY pro.brand
ORDER BY visitadas DESC;

-- (Exercício 2) Identifique quais as lojas de veículo mais visitadas na tabela sales.funnel
SELECT COUNT(fun.visit_page_date) AS visto,
sto.store_name
FROM sales.funnel AS fun
LEFT JOIN sales.stores AS sto
	ON fun.store_id = sto.store_id
GROUP BY sto.store_name 
ORDER BY visto DESC;

-- (Exercício 3) Identifique quantos clientes moram em cada tamanho de cidade (o porte da cidade
-- consta na coluna "size" da tabela temp_tables.regions)
SELECT reg.size,
COUNT(*) AS populacao
FROM sales.customers AS cus
LEFT JOIN temp_tables.regions AS reg
	ON cus.city = reg.city 
	and lower(cus.state) = lower(reg.state)
GROUP BY reg.size 
ORDER BY populacao;
