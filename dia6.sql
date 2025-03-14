-- DIA 6 - Junções entre tabelas

-- 1. Relacionar usuários com suas mensagens enviadas e recebidas
SELECT 
  u.nome AS usuario,
  COUNT(m1.id) AS mensagens_enviadas,
  COUNT(m2.id) AS mensagens_recebidas
FROM usuarios u
LEFT JOIN mensagens m1 ON u.id = m1.remetente_id
LEFT JOIN mensagens m2 ON u.id = m2.destinatario_id
GROUP BY u.nome
ORDER BY mensagens_enviadas DESC;

-- 2. Identificar transações suspeitas associadas a usuários suspeitos
-- (Ex: valor alto ou descrições com palavras-chave)
SELECT 
  u.nome,
  t.valor,
  t.descricao,
  t.data_hora
FROM transacoes t
JOIN usuarios u ON t.usuario_id = u.id
WHERE t.valor > 10000
   OR t.descricao ILIKE '%sigilosa%'
   OR t.descricao ILIKE '%externo%'
   OR t.descricao ILIKE '%cripto%'
ORDER BY t.valor DESC;

-- 3. Cruzar dados de logins e mensagens para saber quem estava online
-- no horário do desaparecimento e enviou mensagens naquele período
SELECT DISTINCT u.nome
FROM usuarios u
JOIN logs_acesso l ON u.id = l.usuario_id
JOIN mensagens m ON u.id = m.remetente_id
WHERE l.acao = 'Login'
  AND l.data_hora BETWEEN '2025-02-26 20:00:00' AND '2025-02-26 23:59:59'
  AND m.data_hora BETWEEN '2025-02-26 20:00:00' AND '2025-02-26 23:59:59';
