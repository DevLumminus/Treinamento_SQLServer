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
O **GETDATE** não impede inserções manuais<br>
Uso do **SELECT**<br>
Descoberta de codigo completo para SELECIONAR os erros possiveis do SQL Server<br>
Uso do **LIKE**<br>
Uso de fuções agregadoras (**MAX**, **MIN** e **AVG**)<br>
Uso do **BETWEEN**<br>
Uso do **UPDATE**<br>
Uso do **DISTINCT**<br>
Uso de **JOINs**<br>
Uso do **HAVING**<br>

## MAIS PROFISSIONAL
Usar o ***ID*** para procurar o BD<br>
Uso da parametrização manual para criar um BD<br>
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
Uso de ***@@TRANCOUNT*** para evitar erros no ROLLBACK<br>
Nunca usar o ***USE*** e o ***GO*** em produção<br>
Uso do ***SUM*** com o ***CASE*** para mostrar mais de uma analise<br>
Uso do ***ERROR_NUMBER*** para personalização de erros<br>
Uso da plataforma para facilitar comandos<br>
Uso do ***FULLTEXT***<br>
Uso do ***TIER***<br>
Quanto menos coisa melhor<br>
Quando for inserções, atualizações ou deletes simples não se usa<br>não se usa ***TRAN*** e nem ***TRY-CATCH***<br>
Sempre, quando for ordenar, use o ***ORDER BY***<br>
Sempre considere usar ***Indice*** para SELECTs frequentes<br>
Se tiver como uma coluna ser NULL use ***LEFT JOIN***<br>
Uso de ***WHERE*** com ***IS NULL*** e ***NOT EXISTS***