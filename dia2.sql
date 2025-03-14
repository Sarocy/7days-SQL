-- DIA 2 - A pista digital: consultando registros

-- 1. Selecionar os usuários cadastrados e ordená-los por data de criação
ALTER TABLE usuarios ADD COLUMN data_criacao TIMESTAMP DEFAULT NOW();

SELECT *
FROM usuarios
ORDER BY data_criacao;


-- 2. Encontrar os logins realizados no dia do desaparecimento (26 de fevereiro de 2025)
SELECT u.nome, l.data_hora, l.ip_origem, l.ip_destino
FROM logs_acesso l
JOIN usuarios u ON u.id = l.usuario_id
WHERE l.acao = 'Login'
  AND l.data_hora BETWEEN '2025-02-26 00:00:00' AND '2025-02-26 23:59:59'
ORDER BY l.data_hora;


-- 3.  Identificar quais usuários tentaram logar sem sucesso ('Acesso Negado')
SELECT u.nome, l.data_hora, l.ip_origem, l.ip_destino
FROM logs_acesso l
JOIN usuarios u ON u.id = l.usuario_id
WHERE l.acao = 'Acesso Negado'
  AND l.data_hora::date = '2025-02-26'
ORDER BY l.data_hora;


-- 4. Identificar tentativas de alterar permissão de acesso através da ação 'Alteração de Permissão'
SELECT 
  u.nome AS usuario, 
  l.data_hora, 
  l.ip_origem, 
  s.nome AS servidor_alterado
FROM logs_acesso l
JOIN usuarios u ON u.id = l.usuario_id
JOIN servidores s ON s.ip = l.ip_destino
WHERE l.acao = 'Alteração de Permissão'
  AND l.data_hora::date = '2025-02-26'
ORDER BY l.data_hora;

