-- EXEMPLOS ########################################################################

-- (Exemplo 1) Seleção de uma coluna sem DISTINCT
-- Liste as marcas de carro que constam na tabela products
SELECT brand
FROM sales.products;
--335 Linhas essa consulta

-- (Exemplo 2) Seleção de uma coluna com DISTINCT
-- Liste as marcas de carro distintas que constam na tabela products
SELECT  DISTINCT brand
FROM sales.products; 
-- 40 LInhas esta consulta

-- (Exemplo 3) Seleção de mais de uma coluna com DISTINCT
-- Liste as marcas e anos de modelo distintos que constam na tabela products
SELECT DISTINCT BRAND,model_year
FROM sales.products; 

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

-- EXEMPLOS ########################################################################

-- (Exemplo 1) Seleção das N primeiras linhas usando LIMIT
-- Liste as 10 primeiras linhas da tabela funnel utilizando o LIMIT
SELECT * 
FROM sales.funnel
LIMIT 10;

-- (Exemplo 2) Seleção das N primeiras linhas usando LIMIT e ORDER BY
-- Liste os 10 produtos mais caros da tabela products com o comando LIMIT
SELECT model,price,brand
FROM sales.products
ORDER BY price DESC
LIMIT 10;
-- EXERCÍCIOS ######################################################################

-- (Exercício 1) Selecione os nomes de cidade distintas que existem no estado de
-- Minas Gerais em ordem alfabética (dados da tabela sales.customers)
SELECT DISTINCT city,state
FROM sales.customers Q
WHERE state ='MG'
ORDER BY city;
-- (Exercício 2) Selecione o visit_id das 10 compras mais recentes efetuadas
-- (dados da tabela sales.funnel)
SELECT visit_id,finish_checkout_date
FROM sales.funnel
where paid_date is not null
order by paid_date desc
LIMIT 10;
-- (Exercício 3) Selecione todos os dados dos 10 clientes com maior score nascidos
-- após 01/01/2000 (dados da tabela sales.customers)
SELECT * 
FROM sales.customers
WHERE birth_date > '2000-01-01'
ORDER BY score DESC
LIMIT 10 ;

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
-- EXEMPLOS ########################################################################

-- (Exemplo 1) Uso de operadores como flag
-- Crie uma coluna que retorne TRUE sempre que um cliente for um profissional clt 
select
    customer_id,
    first_name,
    professional_status,
	(professional_status = 'clt') as ClienteCLT 
from sales.customers;


-- EXEMPLOS ########################################################################

-- (Exemplo 1) Uso do comando BETWEEN 
-- Selecione veículos que custam entre 100k e 200k na tabela products
select *
from sales.products
where  price between 100000 and   200000
;

-- (Exemplo 2)  Uso do comando NOT
-- Selecione veículos que custam abaixo de 100k ou acima 200k 
select *
from sales.products
where price < 100000 or price > 200000


-- (Exemplo 3) Uso do comando IN
-- Selecionar produtos que sejam da marca HONDA, TOYOTA ou RENAULT
select *
from sales.products
where brand = 'HONDA' or brand = 'TOYOTA' or brand = 'RENAULT'


-- (Exemplo 4) Uso do comando LIKE (matchs imperfeitos)
-- Selecione os primeiros nomes distintos da tabela customers que começam
-- com as iniciais ANA
select distinct first_name
from sales.customers
where first_name = 'ANA'


-- (Exemplo 5) Uso do comando ILIKE (ignora letras maiúsculas e minúsculas)
-- Selecione os primeiros nomes distintos com iniciais 'ana'
select distinct first_name
from sales.customers
where first_name like 'ana%'


-- (Exemplo 6) Uso do comando IS NULL
-- Selecionar apenas as linhas que contém nulo no campo "population" na tabela
-- temp_tables.regions
select *
from temp_tables.regions
where population = null




