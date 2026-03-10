-- TIPOS ###########################################################################
-- CASE WHEN
-- COALESCE()


-- EXEMPLOS ########################################################################

-- (Exemplo 1) Agrupamento de dados com CASE WHEN
-- Calcule o nº de clientes que ganham abaixo de 5k, entre 5k e 10k, entre 10k e 
-- 15k e acima de 15k
WITH faixa_renda AS (
SEL
)

-- (Exemplo 2) Tratamento de dados nulos com COALESCE
-- Crie uma coluna chamada populacao_ajustada na tabela temp_tables.regions e
-- preencha com os dados da coluna population, mas caso esse campo estiver nulo, 
-- preencha com a população média (geral) das cidades do Brasil
SELECT * FROM temp_tables.regions limit 10;
SELECT *,
CASE 
	WHEN population IS NOT NULL THEN population
	ELSE (SELECT AVG(population) FROM temp_tables.regions)
	END AS populacao_ajustada
FROM temp_tables.regions
WHERE population is null;

SELECT *,
COALESCE(population, (SELECT AVG(population) FROM temp_tables.regions)) as populacao_ajustada
FROM temp_tables.regions
WHERE population IS NULL
	
-- RESUMO ##########################################################################
-- (1) CASE WHEN é o comando utilizado para criar respostas específicas para 
-- diferentes condições e é muito utilizado para fazer agrupamento de dados
-- (2) COALESCE é o comando utilizado para preencher campos nulos com o primeiro
-- valor não nulo de uma sequência de valores.
