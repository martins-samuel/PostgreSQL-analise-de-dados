-- EXEMPLOS ########################################################################

-- (Exemplo 1) Crie uma função chamada DATEDIFF para calcular a diferença entre
-- duas datas em dias, semanas, meses, anos

select (current_date - '2018-06-01')
select (current_date - '2018-06-01')/7
select (current_date - '2018-06-01')/30
select (current_date - '2018-06-01')/365

select datediff('weeks', '2018-06-01', current_date)

CREATE FUNCTION DATEDIFF(unidade varchar, data_inicial date, data_final date)
RETURNS integer
language SQL
AS
$$
SELECT 
	CASE
		WHEN unidade in ('d','day','days') then (data_final - data_inicial)
		WHEN unidade in ('w','week','weeks') then (data_final - data_inicial)/7
		WHEN unidade in ('m','month','months') then (data_final - data_inicial)/30
		WHEN unidade in ('y','year','years') then (data_final - data_inicial)/365
		END AS diferenca
		

$$

SELECT DATEDIFF('day', '2021-02-04', current_date);
-- (Exemplo 2) Delete a função DATEDIFF criada no exercício anterior

drop function datediff



-- RESUMO ##########################################################################
-- (1) Para criar funções, utiliza-se o comando CREATE FUNCTION
-- (2) Para que o comando funcione é obrigatório informar (a) quais as unidades dos 
-- INPUTS (b) quais as unidades dos OUTPUTS e (c) em qual linguagem a função será escrita
-- (3) O script da função deve estar delimitado por $$
-- (4) Para deletar uma função utiliza-se o comando DROP FUNCTION

