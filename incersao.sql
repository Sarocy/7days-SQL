-- Inserção de dados na tabela usuários
INSERT INTO usuarios (nome, cargo, nivel_acesso) VALUES
('Aurora Camargo', 'Engenheira de Segurança', 5), --1
('Letícia Mota', 'Gerente de Projeto', 4),        --2
('Carlos Ribeiro', 'Analista de Dados', 3),       --3
('Bruna Torres', 'Dev Backend', 4),               --4
('Eduardo Lima', 'Dev Frontend', 3),              --5
('Fernanda Castro', 'Estagiária', 1),             --6
('Rafael Sousa', 'DevOps', 4),                    --7
('Marina Duarte', 'UX Designer', 2),              --8
('André Monteiro', 'Analista de Redes', 3),       --9
('Juliana Farias', 'Scrum Master', 4),            --10
('Vinícius Rocha', 'Data Scientist', 4),          --11
('Thiago Peixoto', 'Product Owner', 4),           --12
('Nina Lopes', 'Tester', 2),                      --13
('Rodrigo Neves', 'SysAdmin', 4),                 --14
('Vinícius Meireles', 'Estagiário', 1),           --15
('Lucas Andrade', 'Dev Mobile', 3),               --16
('Paulo Xavier', 'Analista de BI', 3),            --17
('Beatriz Ramos', 'Arquiteta de Software', 5),    --18
('Fábio Costa', 'Engenheiro de Dados', 4),        --19
('Jéssica Nunes', 'Analista de QA', 2);           --20


-- Inserção de dados na tabela logs_acesso
INSERT INTO logs_acesso (usuario_id, data_hora, ip_origem, ip_destino, acao) VALUES
(15, '2025-02-26 07:21:00', '192.168.1.25', '10.0.0.1', 'Login'),
(15, '2025-02-26 16:21:00', '192.168.1.25', '10.0.0.2', 'Acesso Negado'),
(15, '2025-02-26 16:21:00', '192.168.1.25', '10.0.0.3', 'Acesso Negado'),
(15, '2025-02-26 16:21:00', '192.168.1.25', '10.0.0.4', 'Login'),
(15, '2025-02-26 16:21:00', '192.168.1.25', '10.0.0.5', 'Login'),
(15, '2025-02-26 16:21:00', '192.168.1.25', '10.0.0.3', 'Acesso Negado'),
(9, '2025-02-26 16:25:00', '192.168.1.25', '10.0.0.5', 'Alteração de Permissão'),
(6, '2025-02-26 17:03:00', '192.168.1.25', '10.0.0.3', 'Alteração de Permissão'),
(5, '2025-02-26 07:21:00', '192.168.1.50', '10.0.0.1', 'Login'),
(5, '2025-02-26 10:24:00', '192.168.1.50', '10.0.0.1', 'Download'),
(5, '2025-02-26 12:04:00', '192.168.1.50', '10.0.0.1', 'Envio de Arquivo'),
(5, '2025-02-26 15:43:00', '192.168.1.50', '10.0.0.4', 'Login'),
(5, '2025-02-26 17:24:00', '192.168.1.50', '10.0.0.3', 'Acesso Negado'),
(4, '2025-02-26 14:04:00', '192.168.1.93', '10.0.0.1', 'Login'),
(4, '2025-02-26 16:34:00', '192.168.1.93', '10.0.0.2', 'Login'),
(4, '2025-02-26 18:04:00', '192.168.1.93', '10.0.0.5', 'Login'),
(4, '2025-02-26 20:04:00', '192.168.1.93', '10.0.0.5', 'Download'),
(4, '2025-02-26 20:14:00', '192.168.1.93', '10.0.0.6', 'Acesso Negado'),
(3, '2025-02-26 22:37:00', '192.168.1.33', '10.0.0.3', 'Envio de Arquivo'),
(3, '2025-02-26 20:24:00', '192.168.1.33', '10.0.0.5', 'Login'),
(11, '2025-02-26 10:38:00', '192.168.1.40', '10.0.0.1', 'Login'),
(11, '2025-02-26 10:53:00', '192.168.1.40', '10.0.0.4', 'Login'),
(11, '2025-02-26 11:33:00', '192.168.1.40', '10.0.0.4', 'Download'),
(11, '2025-02-26 13:38:00', '192.168.1.40', '10.0.0.6', 'Acesso Negado'),
(2, '2025-02-26 07:56:00', '192.168.1.97', '10.0.0.1', 'Login'),
(2, '2025-02-26 08:25:00', '192.168.1.97', '10.0.0.1', 'Envio de Arquivo'),
(2, '2025-02-26 09:43:00', '192.168.1.97', '10.0.0.4', 'Login'),
(2, '2025-02-26 10:00:00', '192.168.1.97', '10.0.0.4', 'Logout'),
(2, '2025-02-26 10:24:00', '192.168.1.97', '10.0.0.6', 'Acesso Negado'),
(2, '2025-02-26 10:26:00', '192.168.1.97', '10.0.0.6', 'Acesso Negado'),
(2, '2025-02-26 16:56:00', '192.168.1.97', '10.0.0.6', 'Alteração de Permissão'),
(2, '2025-02-26 17:02:00', '192.168.1.97', '10.0.0.6', 'Login'),
(2, '2025-02-26 17:36:00', '192.168.1.97', '10.0.0.6', 'Download'),
(2, '2025-02-26 17:38:00', '192.168.1.97', '10.0.0.6', 'Envio de Arquivo'),
(2, '2025-02-26 20:31:00', '192.168.1.97', '10.0.0.4', 'Login'),
(2, '2025-02-26 20:36:00', '192.168.1.97', '10.0.0.4', 'Envio de Arquivo'),
(18, '2025-02-26 10:15:00', '192.168.1.87', '10.0.0.1', 'Login'),
(18, '2025-02-26 12:55:00', '192.168.1.87', '10.0.0.1', 'Logout'),
(18, '2025-02-26 14:03:00', '192.168.1.87', '10.0.0.2', 'Login'),
(18, '2025-02-26 14:15:00', '192.168.1.87', '10.0.0.2', 'Logout'),
(18, '2025-02-26 14:55:00', '192.168.1.87', '10.0.0.4', 'Login'),
(18, '2025-02-26 16:15:00', '192.168.1.87', '10.0.0.4', 'Download'),
(18, '2025-02-26 16:19:00', '192.168.1.87', '10.0.0.4', 'Envio de Arquivo'),
(18, '2025-02-26 17:39:00', '192.168.1.87', '10.0.0.6', 'Login'),
(18, '2025-02-26 18:15:00', '192.168.1.87', '10.0.0.6', 'Logout'),
(6, '2025-02-26 08:52:00', '192.168.1.50', '10.0.0.2', 'Login'),
(6, '2025-02-26 08:58:00', '192.168.1.50', '10.0.0.2', 'Acesso Negado'),
(6, '2025-02-26 10:32:00', '192.168.1.50', '10.0.0.2', 'Alteração de Permissão'),
(6, '2025-02-26 10:36:00', '192.168.1.50', '10.0.0.4', 'Acesso Negado'),
(1, '2025-02-26 07:39:00', '192.168.1.73', '10.0.0.1', 'Alteração de Permissão'),
(1, '2025-02-26 08:15:00', '192.168.1.73', '10.0.0.5', 'Login'),
(1, '2025-02-26 08:35:00', '192.168.1.73', '10.0.0.5', 'Logout'),
(1, '2025-02-26 08:55:00', '192.168.1.73', '10.0.0.4', 'Login'),
(1, '2025-02-26 09:53:00', '192.168.1.73', '10.0.0.4', 'Download'),
(1, '2025-02-26 11:15:00', '192.168.1.73', '10.0.0.3', 'Login'),
(1, '2025-02-26 12:37:00', '192.168.1.73', '10.0.0.3', 'Download'),
(1, '2025-02-26 12:40:00', '192.168.1.73', '10.0.0.3', 'Envio de Arquivo'),
(1, '2025-02-26 12:44:00', '192.168.1.73', '10.0.0.6', 'Login'),
(1, '2025-02-26 13:05:00', '192.168.1.73', '10.0.0.6', 'Download'),
(1, '2025-02-26 13:09:00', '192.168.1.73', '10.0.0.6', 'Envio de Arquivo'),
(9, '2025-02-26 22:29:00', '192.168.1.78', '10.0.0.6', 'Acesso Negado'),
(14, '2025-02-26 20:01:00', '192.168.1.95', '10.0.0.1', 'Login'),
(20, '2025-02-26 20:53:00', '192.168.1.43', '10.0.0.2', 'Logout'),
(15, '2025-02-26 22:42:00', '192.168.1.41', '10.0.0.4', 'Alteração de Permissão'),
(14, '2025-02-26 20:11:00', '192.168.1.94', '10.0.0.1', 'Download'),
(12, '2025-02-26 21:44:00', '192.168.1.99', '10.0.0.6', 'Acesso Negado'),
(8, '2025-02-26 21:44:00', '192.168.1.97', '10.0.0.6', 'Download'),
(16, '2025-02-26 22:03:00', '192.168.1.73', '10.0.0.6', 'Alteração de Permissão'),
(12, '2025-02-26 20:29:00', '192.168.1.14', '10.0.0.1', 'Envio de Arquivo'),
(9, '2025-02-26 20:12:00', '192.168.1.77', '10.0.0.4', 'Acesso Negado'),
(8, '2025-02-26 22:14:00', '192.168.1.41', '10.0.0.1', 'Download'),
(16, '2025-02-26 21:20:00', '192.168.1.99', '10.0.0.4', 'Login'),
(9, '2025-02-26 22:23:00', '192.168.1.10', '10.0.0.1', 'Login'),
(20, '2025-02-26 22:49:00', '192.168.1.85', '10.0.0.1', 'Logout'),
(8, '2025-02-26 21:19:00', '192.168.1.66', '10.0.0.5', 'Envio de Arquivo'),
(10, '2025-02-26 22:05:00', '192.168.1.64', '10.0.0.6', 'Envio de Arquivo'),
(10, '2025-02-26 22:04:00', '192.168.1.14', '10.0.0.4', 'Login'),
(15, '2025-02-26 21:15:00', '192.168.1.78', '10.0.0.1', 'Envio de Arquivo'),
(8, '2025-02-26 20:47:00', '192.168.1.98', '10.0.0.6', 'Login'),
(14, '2025-02-26 20:12:00', '192.168.1.83', '10.0.0.1', 'Download'),
(16, '2025-02-26 21:00:00', '192.168.1.65', '10.0.0.6', 'Alteração de Permissão');



INSERT INTO mensagens (remetente_id, destinatario_id, data_hora, conteudo) VALUES
(3, 19, '2025-02-26 20:11:00', 'A senha do servidor principal foi alterada sem aviso. Isso é um risco!'),
(2, 11, '2025-02-26 12:11:00', 'Preciso encontrar você com urgência'),
(11, 2, '2025-02-26 18:17:00', 'A operação vai ser concluída'),
(20, 10, '2025-02-26 21:04:00', 'Você tem o backup de ontem? Recebi uma solicitação estranha.'),
(5, 8, '2025-02-26 20:20:00', 'Vi um comportamento suspeito no sistema.'),
(9, 12, '2025-02-26 20:55:00', 'Aurora mencionou um acesso não autorizado vindo do servidor sigiloso.'),
(11, 18, '2025-02-26 20:07:00', 'Aurora relatou uma violação de segurança antes de sumir.'),
(11, 17, '2025-02-26 20:30:00', 'Você sabe se a Aurora foi ao almoxarifado hoje? Ela sumiu.'),
(2, 1, '2025-02-26 21:18:00', 'A extração foi feita. Encaminhei via canal seguro.'),
(7, 15, '2025-02-26 20:49:00', 'Verifiquei os logs e Letícia alterou permissões sem autorização.'),
(13, 6, '2025-02-26 21:51:00', 'Aurora me pediu para revisar os logs do servidor sigiloso.'),
(14, 15, '2025-02-26 20:18:00', 'O tráfego do servidor sigiloso aumentou bastante hoje.'),
(6, 14, '2025-02-26 20:17:00', 'Há movimentações financeiras incomuns vindas do setor de ciência de dados.'),
(2, 15, '2025-02-26 20:22:00', 'Enviando o backup como solicitado.'),
(4, 12, '2025-02-26 21:11:00', 'A Aurora me pediu para revisar os logs do servidor sigiloso também.'),
(13, 12, '2025-02-26 20:20:00', 'Ela disse que desconfiava de alguém da gerência.'),
(16, 11, '2025-02-26 20:27:00', 'A senha do servidor principal foi alterada. Você sabia disso?'),
(11, 4, '2025-02-26 22:50:00', 'Notei que a Letícia passou a tarde sozinha na sala de servidores.'),
(17, 8, '2025-02-26 22:21:00', 'A Aurora comentou que encontrou rastros de acesso suspeito ontem.'),
(17, 5, '2025-02-26 20:15:00', 'O financeiro registrou um pagamento externo muito alto agora à noite.'),
(19, 6, '2025-02-26 21:23:00', 'Verifique a conta de Vinícius. Há um depósito não identificado.'),
(12, 1, '2025-02-26 21:09:00', 'Aurora disse que deixaria um backup em segurança, mas não terminou.'),
(6, 16, '2025-02-26 20:37:00', 'A Aurora me pediu para revisar os logs do servidor sigiloso com urgência.'),
(5, 19, '2025-02-26 22:16:00', 'Recebi um e-mail estranho com assunto “extração completa”.'),
(3, 5, '2025-02-26 20:41:00', 'Se algo acontecer comigo, verifique os acessos ao servidor 10.0.0.6.'),
(13, 17, '2025-02-26 22:25:00', 'Aurora mencionou algo sobre um plano interno antes de sumir.'),
(13, 7, '2025-02-26 21:03:00', 'Você pode me mandar o backup anterior ao incidente?'),
(8, 10, '2025-02-26 22:32:00', 'A Aurora me pediu para revisar os logs do servidor sigiloso.'),
(14, 16, '2025-02-26 22:00:00', 'A reunião da equipe de segurança foi cancelada. Ninguém encontra Aurora.'),
(7, 9, '2025-02-26 22:10:00', 'Verifique os logs de acesso entre 18h e 20h. Pode ter algo útil.'),
(17, 14, '2025-02-26 20:35:00', 'A reunião da equipe de segurança foi cancelada sem explicação. Algo está errado.'),
(16, 19, '2025-02-26 21:33:00', 'A senha do servidor principal foi alterada. Ninguém confirmou isso.');



INSERT INTO transacoes (usuario_id, valor, data_hora, descricao) VALUES
(18, 12090.92, '2025-02-26 08:56:00', 'Pagamento externo'),
(18, 1236.44, '2025-02-26 12:39:00', 'Doação voluntária'),
(1, 164.62, '2025-02-26 08:23:00', 'Doação voluntária'),
(1, 13666.77, '2025-02-26 13:31:00', 'Movimentação sigilosa'),
(11, 1379.23, '2025-02-26 10:36:00', 'Doação voluntária'),
(11, 17379.23, '2025-02-26 21:54:00', 'Criptotransação não identificada'),
(11, 4502.6, '2025-02-26 22:19:00', 'Movimentação sigilosa'),
(11, 3502.6, '2025-02-26 22:22:00', 'Movimentação sigilosa'),
(11, 4802.8, '2025-02-26 22:31:00', 'Movimentação sigilosa'),
(11, 4502.6, '2025-02-26 22:36:00', 'Movimentação sigilosa'),
(11, 4325.9, '2025-02-26 22:42:00', 'Movimentação sigilosa'),
(11, 6502.6, '2025-02-26 22:46:00', 'Movimentação sigilosa'),
(11, 3802.6, '2025-02-26 22:50:00', 'Movimentação sigilosa'),
(11, 4502.6, '2025-02-26 23:02:00', 'Movimentação sigilosa'),
(11, 3502.6, '2025-02-26 23:06:00', 'Movimentação sigilosa'),
(11, 4802.8, '2025-02-26 23:09:00', 'Movimentação sigilosa'),
(11, 4502.6, '2025-02-26 23:11:00', 'Movimentação sigilosa'),
(11, 4325.9, '2025-02-26 23:13:00', 'Movimentação sigilosa'),
(11, 6502.6, '2025-02-26 23:16:00', 'Movimentação sigilosa'),
(11, 3802.6, '2025-02-26 23:19:00', 'Movimentação sigilosa'),
(11, 4502.6, '2025-02-26 23:22:00', 'Movimentação sigilosa'),
(11, 3502.6, '2025-02-26 23:16:00', 'Movimentação sigilosa'),
(11, 4802.8, '2025-02-26 23:31:00', 'Movimentação sigilosa'),
(11, 4502.6, '2025-02-26 23:36:00', 'Movimentação sigilosa'),
(11, 4325.9, '2025-02-26 23:42:00', 'Movimentação sigilosa'),
(11, 6502.6, '2025-02-26 23:46:00', 'Movimentação sigilosa'),
(11, 3802.6, '2025-02-26 23:50:00', 'Movimentação sigilosa'),
(18, 17379.23, '2025-02-26 16:03:00', 'Criptotransação não identificada'),
(14, 1872.78, '2025-02-26 21:54:00', 'Criptotransação não identificada'),
(14, 1872.78, '2025-02-26 20:44:00', 'Pagamento externo'),
(15, 0.01, '2025-02-26 11:11:00', 'Criptotransação não identificada'),
(2, 1381.19, '2025-02-26 10:11:00', 'Pagamento externo'),
(2, 1381.19, '2025-02-26 10:15:00', 'Pagamento externo'),
(2, 1381.19, '2025-02-26 10:21:00', 'Pagamento externo'),
(18, 150000.98, '2025-02-26 20:39:00', 'Compra de software'),
(10, 15368.64, '2025-02-26 22:37:00', 'Movimentação sigilosa'),
(4, 8368.64, '2025-02-26 16:37:00', 'Movimentação sigilosa'),
(4, 4368.64, '2025-02-26 20:37:00', 'Movimentação sigilosa'),
(12, 3568.64, '2025-02-26 17:37:00', 'Movimentação sigilosa'),
(18, 5368.64, '2025-02-26 15:37:00', 'Movimentação sigilosa'),
(18, 5368.64, '2025-02-26 15:37:00', 'Movimentação sigilosa'),
(18, 5368.64, '2025-02-26 14:37:00', 'Movimentação sigilosa'),
(18, 5368.64, '2025-02-26 19:37:00', 'Movimentação sigilosa'),
(18, 14747.99, '2025-02-26 21:30:00', 'Reembolso'),
(18, 14747.99, '2025-02-26 22:30:00', 'Reembolso'),
(6, 1392.39, '2025-02-26 15:17:00', 'Serviço contratado'),
(8, 2392.39, '2025-02-26 14:17:00', 'Serviço contratado'),
(4, 8392.39, '2025-02-26 19:17:00', 'Serviço contratado');


-- Inserção de dados na tabela servidores
INSERT INTO servidores (nome, ip, comprometido) VALUES
('Servidor Principal', '10.0.0.1', TRUE),
('Servidor de Backup', '10.0.0.2', FALSE),
('Servidor Financeiro', '10.0.0.3', FALSE),
('Servidor de Testes', '10.0.0.4', TRUE),
('Servidor DevOps', '10.0.0.5', FALSE),
('Servidor Sigiloso', '10.0.0.6', TRUE);