# 📂 7DaysOfCode - SQL: Inserção de Dados

Esta branch contém os scripts SQL responsáveis pela **inserção de dados** no banco de dados da investigação do desaparecimento da programadora **Aurora Camargo**.  

🔍 Aqui, você encontrará os comandos `INSERT INTO` para popular as tabelas que serão analisadas ao longo dos **7 dias do desafio**.  


## 📌 Estrutura do Banco de Dados  

As tabelas que receberão os dados são:  

- `usuarios` (**registro de dados dos funcionários**)  
- `log_acessos` (**registro de logins no sistema**)  
- `mensagens` (**registro de trocas de informações entre funcionários**)  
- `transacoes` (**registro de movimentações financeiras suspeitas**)  
- `servidores` (**registro de acessos e configurações dos servidores da empresa**)  


## 🚀 Como usar  

Para inserir os dados no banco **PostgreSQL**, siga estes passos:  

1. **Certifique-se de que já criou o banco de dados e as tabelas**.  
2. **Execute os comandos de inserção** disponíveis nos arquivos `.sql`.  

### 📜 Exemplo de execução:  

Caso já esteja conectado ao seu banco de dados PostgreSQL:

```
psql -U seu_usuario -d investigacao -f insert_usuarios.sql
```

Ou, se estiver rodando no **DBeaver, PgAdmin** ou outro gerenciador SQL, **basta abrir os arquivos .sql e executar os comandos manualmente.**

🔎 Boa investigação!
