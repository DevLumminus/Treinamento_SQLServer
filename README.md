# Treinamento_SQLServer
4 questionarios de SQL Server para treinamento e uso da prática da linguagem SQL na mesma IDE

## O QUE APRENDI?
**Ctrl + K + Ctrl + C** - Comenta tudo<br>
**Ctrl + K + Ctrl + U** - Descomenta tudo<br>
Como usar o **IF NOT EXISTS** para criar um BD<br>
Uso do **GO** para começar e encerrar operações<br>
Como usar o **IF OBJECT_ID('Tabela', 'Tipo de tabela')** para criar tabelas<br>
| Código | Tipo de objeto          |<br>
| ------ | ----------------------- |<br>
| U      | Tabela de usuário       |<br>
| V      | View                    |<br>
| P      | Stored Procedure        |<br>
| FN     | Função escalar          |<br>
| TR     | Trigger                 |<br>
| IF     | Função inline de tabela |<br>
| TF     | Função de tabela        |<br>
Como usar o **CAST(GETDATE() AS DATE)** para DEFAULT de data de cadastro<br>
Uso de varios tipos de dados (DECIMAL, DATE, VARCHAR, INT)<br>
Uso do **INSERT INTO ... INTO** para inserção de dados<br>
Uso do **IDENTITY(1,1)** como AUTO_INCREMENT<br>
Uso e formatação do**UNIQUE** para colunas (usar como CONSTRAINT)<br>
Uso do **ALTER TABLE** para alterar tabelas<br>
Criação de **INDEX** para uso futuro<br>
Uso do **BEGIN TRAN** para gravar mudanças<br>
Uso e preenchimento de **RAISERROR** para erros manuais<br>

## MAIS PROFISSIONAL
Usar o ***ID*** para procurar o BD<br>
Nunca use ***MONEY***<br>
Sempre separe as ***CONTRAINT*** para melhor manutenção<br>
No nome da tabela sempre use ***dbo***<br>
Usar o ***BEGIN TRAN ... COMMIT*** para rastreio de mudanças<br>
Uso de divisão visual dos itens do INSERT:
    INSERT INTO dbo.Funcionarios(<br>
        Nome,<br>
        Cargo,<br>
        Salario<br>
    )<br>
Explicitar quando for ***NOT NULL*** e quando for ***NULL*** mesmo sendo PK<br>
Uso de ***TRY ... CATCH*** para tratamento de erros<br>
Uso de ***IF*** para verificação de existencia<br>
Uso de ***@@TRANCOUNT*** para evitar erros no ROLLBACK