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