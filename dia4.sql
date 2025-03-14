
-- DIA 4 - Os Suspeitos: Agrupando e Contando Dados

-- 1. Listar os usuários que mais tentaram logar na rede da CyberTech.
SELECT u.nome, COUNT(*) AS tentativas_login
FROM logs_acesso l
JOIN usuarios u ON l.usuario_id = u.id
WHERE l.acao = 'Login'
  AND l.data_hora BETWEEN '2025-02-01' AND '2025-02-28'
GROUP BY u.nome
ORDER BY tentativas_login DESC;

-- 2. Contar quantas mensagens cada usuário enviou
SELECT u.nome, COUNT(*) AS mensagens_enviadas
FROM mensagens m
JOIN usuarios u ON m.remetente_id = u.id
GROUP BY u.nome
ORDER BY mensagens_enviadas DESC;

-- 3. Contar quantas mensagens cada usuário recebeu
SELECT u.nome, COUNT(*) AS mensagens_recebidas
FROM mensagens m
JOIN usuarios u ON m.destinatario_id = u.id
GROUP BY u.nome
ORDER BY mensagens_recebidas DESC;

-- 4. Descobrir quem realizou mais transações no mês de fevereiro
SELECT u.nome, COUNT(*) AS total_transacoes
FROM transacoes t
JOIN usuarios u ON t.usuario_id = u.id
WHERE t.data_hora BETWEEN '2025-02-01' AND '2025-02-28'
GROUP BY u.nome
ORDER BY total_transacoes DESC;

-- 5. Listar os usuários que mais movimentaram dinheiro em transações, mostrando o total
-- movimentado e os tipos de operação realizados, ordenando do maior para o menor valor.
SELECT 
  u.nome,
  SUM(t.valor) AS total_movimentado,
  STRING_AGG(DISTINCT t.descricao, ', ') AS descricoes
FROM transacoes t
JOIN usuarios u ON u.id = t.usuario_id
GROUP BY u.nome
ORDER BY total_movimentado DESC;
