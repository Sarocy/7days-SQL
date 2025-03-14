-- DIA 5 - Mensagens: interceptando a comunicação

-- 1. Quem mencionou "Aurora" em mensagens?
SELECT u.nome AS remetente, m.data_hora, m.conteudo
FROM mensagens m
JOIN usuarios u ON m.remetente_id = u.id
WHERE m.conteudo ILIKE '%aurora%'
ORDER BY m.data_hora;


-- 2. Quais mensagens falam sobre "senha", "logs", "servidor" ou "permissão"?
SELECT u.nome AS remetente, m.data_hora, m.conteudo
FROM mensagens m
JOIN usuarios u ON m.remetente_id = u.id
WHERE m.conteudo ILIKE '%senha%'
   OR m.conteudo ILIKE '%log%'
   OR m.conteudo ILIKE '%servidor%'
   OR m.conteudo ILIKE '%permiss%'
ORDER BY m.data_hora;

--  3. Quem mais trocou mensagens com Aurora (usuário id = 1)?
SELECT u.nome, COUNT(*) AS total_mensagens
FROM mensagens m
JOIN usuarios u ON u.id = m.remetente_id OR u.id = m.destinatario_id
WHERE (m.remetente_id = 1 OR m.destinatario_id = 1)
  AND u.id != 1
GROUP BY u.nome
ORDER BY total_mensagens DESC;

-- 4. Quais pares de usuários mais se comunicaram entre si?
SELECT 
  LEAST(m.remetente_id, m.destinatario_id) AS usuario1_id,
  GREATEST(m.remetente_id, m.destinatario_id) AS usuario2_id,
  COUNT(*) AS total,
  u1.nome AS usuario1,
  u2.nome AS usuario2
FROM mensagens m
JOIN usuarios u1 ON u1.id = LEAST(m.remetente_id, m.destinatario_id)
JOIN usuarios u2 ON u2.id = GREATEST(m.remetente_id, m.destinatario_id)
GROUP BY usuario1_id, usuario2_id, u1.nome, u2.nome
ORDER BY total DESC
LIMIT 10;


-- 5. Quais as mensagens trocadas entre os dois usuários que mais se comunicaram?
SELECT 
  u1.nome AS remetente,
  u2.nome AS destinatario,
  m.data_hora,
  m.conteudo
FROM mensagens m
JOIN usuarios u1 ON m.remetente_id = u1.id
JOIN usuarios u2 ON m.destinatario_id = u2.id
WHERE (m.remetente_id = 2 AND m.destinatario_id = 11)
   OR (m.remetente_id = 11 AND m.destinatario_id = 2)
ORDER BY m.data_hora;