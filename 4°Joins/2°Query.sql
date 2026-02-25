-- EXERCÍCIOS ########################################################################

-- (Exemplo 1) Identifique qual é o status profissional mais frequente nos clientes 
-- que compraram automóveis no site
SELECT COUNT(fun.paid_date) AS pagamento,cus.professional_status
FROM sales.funnel as fun
LEFT JOIN sales.customers as cus
ON fun.customer_id = cus.customer_id
GROUP BY cus.professional_status
ORDER BY  pagamento DESC;

-- (Exemplo 2) Identifique qual é o gênero mais frequente nos clientes que compraram
-- automóveis no site. Obs: Utilizar a tabela temp_tables.ibge_genders
select * from temp_tables.ibge_genders limit 10

SELECT COUNT(cus.email) AS Quantidade_Clientes, ibgen.gender 
FROM sales.customers as cus 
LEFT JOIN temp_tables.ibge_genders as ibgen 
ON cus.first_name = ibgen.first_name 
WHERE ibgen.gender = 'female'
GROUP BY ibgen.gender;



SELECT ibge.gender,
COUNT(fun.paid_date)
FROM sales.funnel as FUN
LEFT JOIN sales.customers as CUS
	ON fun.customer_id = cus.customer_id 
LEFT JOIN temp_tables.ibge_genders as ibge 	
	ON LOWER (cus.first_name) = ibge.first_name 
GROUP BY ibge.gender
-- (Exemplo 3) Identifique de quais regiões são os clientes que mais visitam o site
-- Obs: Utilizar a tabela temp_tables.regions
select * from sales.customers limit 10
select * from temp_tables.regions limit 10

SELECT reg.region,
COUNT(fun.visit_page_date) as visitas
FROM sales.funnel as fun
LEFT JOIN sales.customers as cus
	ON fun.customer_id = cus.customer_id 
LEFT JOIN temp_tables.regions as reg 
	ON LOWER(cus.city) = LOWER(reg.city) 
	AND LOWER(cus.state) = LOWER(reg.state) 
GROUP BY reg.region
ORDER BY visitas;

