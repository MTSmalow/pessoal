-- ========================================
-- 1. NÍVEL BÁSICO
-- ========================================

-- 1.1. Contar quantos funcionários trabalham em cada região
SELECT 
    f.regiao,
    COUNT(*) AS quantidade_funcionarios
FROM Funcionarios func
INNER JOIN Filiais f ON func.filial_id = f.filial_id
GROUP BY f.regiao
ORDER BY quantidade_funcionarios DESC;


-- 1.2. Calcular a soma total dos salários pagos por cargo
SELECT 
    cargo,
    SUM(salario) AS total_salarios
FROM Funcionarios
GROUP BY cargo
ORDER BY total_salarios DESC;


-- 1.3. Encontrar o valor_venda médio para cada tipo de produto vendido
SELECT 
    produto,
    AVG(valor_venda) AS media_vendas
FROM Vendas
GROUP BY produto
ORDER BY media_vendas DESC;


-- 1.4. Descobrir o maior e o menor salário em cada nome_filial
SELECT 
    f.nome_filial,
    MAX(func.salario) AS maior_salario,
    MIN(func.salario) AS menor_salario
FROM Funcionarios func
INNER JOIN Filiais f ON func.filial_id = f.filial_id
GROUP BY f.nome_filial
ORDER BY maior_salario DESC;


-- ========================================
-- 2. NÍVEL INTERMEDIÁRIO
-- ========================================

-- 2.1. Listar as nome_filial que possuem um total de mais de 3 funcionários
SELECT 
    f.nome_filial,
    COUNT(*) AS total_funcionarios
FROM Funcionarios func
INNER JOIN Filiais f ON func.filial_id = f.filial_id
GROUP BY f.nome_filial
HAVING COUNT(*) > 3
ORDER BY total_funcionarios DESC;


-- 2.2. Encontrar a data de contratação mais antiga para cada cargo (excluindo Gerentes)
SELECT 
    cargo,
    MIN(data_contratacao) AS data_contratacao_mais_antiga
FROM Funcionarios
WHERE cargo != 'Gerente'
GROUP BY cargo
ORDER BY data_contratacao_mais_antiga;


-- 2.3. Calcular o valor total de vendas realizado por cada nome_filial
SELECT 
    f.nome_filial,
    SUM(v.valor_venda) AS total_vendas
FROM Vendas v
INNER JOIN Funcionarios func ON v.func_id = func.func_id
INNER JOIN Filiais f ON func.filial_id = f.filial_id
GROUP BY f.nome_filial
ORDER BY total_vendas DESC;


-- 2.4. Listar os func_id que tiveram média de vendas maior que a média geral
SELECT 
    func_id,
    AVG(valor_venda) AS media_vendas_funcionario
FROM Vendas
GROUP BY func_id
HAVING AVG(valor_venda) > (
    SELECT AVG(valor_venda) 
    FROM Vendas
)
ORDER BY media_vendas_funcionario DESC;


-- ALTERNATIVA 2.4 (Mostrando também a média geral para comparação)
SELECT 
    v.func_id,
    f.nome AS nome_funcionario,
    AVG(v.valor_venda) AS media_vendas_funcionario,
    (SELECT AVG(valor_venda) FROM Vendas) AS media_geral
FROM Vendas v
INNER JOIN Funcionarios f ON v.func_id = f.func_id
GROUP BY v.func_id, f.nome
HAVING AVG(v.valor_venda) > (SELECT AVG(valor_venda) FROM Vendas)
ORDER BY media_vendas_funcionario DESC;
