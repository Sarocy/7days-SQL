# 📅 Dia 1 - A cena do crime: preparando o banco de dados

Neste primeiro dia da investigação, começamos a entender o ambiente onde ocorreu o incidente: o desaparecimento de uma programadora e o roubo de um código-fonte confidencial. Nossa missão inicial é **mapear os personagens envolvidos e construir o cenário do crime**.

## 🎯 Objetivos do dia

Criar e popular as tabelas principais do sistema:
- `usuarios` (**registro de dados dos funcionários**)  
- `log_acessos` (**registro de logins no sistema**)  
- `mensagens` (**registro de trocas de informações entre funcionários**)  
- `transacoes` (**registro de movimentações financeiras suspeitas**)  
- `servidores` (**registro de acessos e configurações dos servidores da empresa**) 

## 🗂️ Estrutura das tabelas

### 📋 `usuarios`
Armazena os colaboradores da empresa.

| Campo         | Tipo         | Descrição                            |
|---------------|--------------|----------------------------------------|
| `id`          | SERIAL       | Identificador único do usuário         |
| `nome`        | VARCHAR      | Nome completo                         |
| `cargo`       | VARCHAR      | Cargo ou função na empresa            |
| `nivel_acesso`| INTEGER      | Nível de acesso (1 a 5)               |


### 📋 `logs_acesso`
Registra atividades dos usuários no sistema.

| Campo         | Tipo         | Descrição                                      |
|---------------|--------------|------------------------------------------------|
| `id`          | SERIAL       | Identificador do log                           |
| `usuario_id`  | INTEGER      | ID do usuário que realizou a ação              |
| `data_hora`   | TIMESTAMP    | Data e hora do evento                          |
| `ip_origem`   | VARCHAR      | IP do computador do usuário                    |
| `ip_destino`  | VARCHAR      | IP do servidor acessado                        |
| `acao`        | VARCHAR      | Tipo de ação realizada (Login, Download etc.) |


### 📋 `mensagens`
Mensagens trocadas entre usuários da empresa.

| Campo             | Tipo         | Descrição                                 |
|-------------------|--------------|---------------------------------------------|
| `id`              | SERIAL       | Identificador da mensagem                   |
| `remetente_id`    | INTEGER      | ID do usuário que enviou a mensagem         |
| `destinatario_id` | INTEGER      | ID do usuário que recebeu a mensagem        |
| `data_hora`       | TIMESTAMP    | Data e hora da mensagem                     |
| `conteudo`        | TEXT         | Conteúdo da mensagem                        |


### 📋 `transacoes`
Registra movimentações financeiras de cada usuário.

| Campo         | Tipo         | Descrição                                  |
|---------------|--------------|----------------------------------------------|
| `id`          | SERIAL       | Identificador da transação                   |
| `usuario_id`  | INTEGER      | ID do usuário responsável pela transação     |
| `valor`       | NUMERIC      | Valor da transação                           |
| `data_hora`   | TIMESTAMP    | Data e hora da transação                     |
| `descricao`   | VARCHAR      | Descrição da transação                       |


### 📋 `servidores`
Lista de servidores da empresa e seu status de segurança.

| Campo         | Tipo         | Descrição                                |
|---------------|--------------|--------------------------------------------|
| `id`          | SERIAL       | Identificador do servidor                 |
| `nome`        | VARCHAR      | Nome do servidor                          |
| `ip`          | VARCHAR      | Endereço IP do servidor                   |
| `comprometido`| BOOLEAN      | Indica se o servidor foi comprometido     |
