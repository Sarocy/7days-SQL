-- DIA 3 - O Rastro do Dinheiro: Investigando Transações

-- 1. Transações incomuns (valores muito altos ou descrições suspeitas)
SELECT u.nome, t.valor, t.data_hora, t.descricao
FROM transacoes t
JOIN usuarios u ON u.id = t.usuario_id
WHERE t.valor > 10000
   OR t.descricao ILIKE '%externo%'
   OR t.descricao ILIKE '%sigilosa%'
   OR t.descricao ILIKE '%criptotransação%'
ORDER BY t.valor DESC;

-- 2. Verificar se Aurora movimentou dinheiro antes de sumir
SELECT u.nome, t.valor, t.data_hora, t.descricao
FROM transacoes t
JOIN usuarios u ON u.id = t.usuario_id
WHERE u.nome = 'Aurora Camargo'
ORDER BY t.data_hora;

-- 3. Último login da Aurora
SELECT data_hora
FROM logs_acesso
WHERE usuario_id = 1 AND acao = 'Login'
ORDER BY data_hora DESC
LIMIT 1;

-- 4. Transações feitas após o último login da Aurora
SELECT u.nome, t.valor, t.data_hora, t.descricao
FROM transacoes t
JOIN usuarios u ON u.id = t.usuario_id
WHERE t.data_hora > '2025-02-26 13:09:00'
ORDER BY t.data_hora ASC;


-- 5. Qual foi o total movimentado por cada usuário?
SELECT u.nome, SUM(t.valor) AS total_movimentado
FROM transacoes t
JOIN usuarios u ON t.usuario_id = u.id
GROUP BY u.nome
ORDER BY total_movimentado DESC;