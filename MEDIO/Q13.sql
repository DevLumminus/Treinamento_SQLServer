SELECT
    E.ID_Emprestimo,
    
    -- Dados do Livro
    L.ID_Livro,
    L.Titulo,
    L.Autor,
    L.Ano_Publicacao,
    
    -- Dados da Editora
    ED.ID_Editora,
    ED.Nome        AS NomeEditora,
    ED.Cidade      AS CidadeEditora,
    
    -- Dados do Usuário
    U.ID_Usuario,
    U.Nome         AS NomeUsuario,
    U.Email,
    U.Tipo         AS TipoUsuario,
    
    -- Dados do Empréstimo
    E.Data_Emprestimo,
    E.Data_Devolucao,
    E.Devolvido

FROM dbo.Emprestimo AS E
INNER JOIN dbo.Livro     AS L  ON L.ID_Livro    = E.ID_Livro
INNER JOIN dbo.Editora   AS ED ON ED.ID_Editora = L.ID_Editora
INNER JOIN dbo.Usuario   AS U  ON U.ID_Usuario  = E.ID_Usuario;