-- EXEMPLOS ########################################################################

-- (Exemplo 1) Utilize o LEFT JOIN para fazer join entre as tabelas
-- temp_tables.tabela_1 e temp_tables.tabela_2
select * from temp_tables.tabela_1
select * from temp_tables.tabela_2

SELECT t1.name, t1.cpf, t2.state
FROM temp_tables.tabela_1 as t1 
LEFT JOIN temp_tables.tabela_2 as t2
ON t1.cpf = t2.cpf;

-- (Exemplo 2) Utilize o INNER JOIN para fazer join entre as tabelas
-- temp_tables.tabela_1 e temp_tables.tabela_2
SELECT t1.name,t1.cpf,t2.state
FROM temp_tables.tabela_1 as t1 
INNER JOIN temp_tables.tabela_2 as t2
ON t1.cpf = t2.cpf;

-- (Exemplo 3) Utilize o RIGHT JOIN para fazer join entre as tabelas
-- temp_tables.tabela_1 e temp_tables.tabela_2

SELECT t2.cpf,t1.name,t2.state
FROM temp_tables.tabela_1 as t1
RIGHT JOIN temp_tables.tabela_2 as t2
ON t1.cpf =t2.cpf;

-- (Exemplo 4) Utilize o FULL JOIN para fazer join entre as tabelas
-- temp_tables.tabela_1 e temp_tables.tabela_2
SELECT t2.cpf,t1.name,t2.state
FROM temp_tables.tabela_1 as t1
FULL JOIN temp_tables.tabela_2 as t2 
ON t1.cpf = t2.cpf;
