select * from [dbo].[Identifica��o$]
SELECT * FROM TPA.Funcionario

update [dbo].[Identifica��o$] set [NOME COMPLETO] = UPPER([NOME COMPLETO])

UPDATE F SET F.Nome = D.[NOME COMPLETO]
FROM TPA.Funcionario F
INNER JOIN [dbo].[Identifica��o$] D ON F.Id = D.ID

UPDATE F SET F.Endereco = D.Endere�o, Telefone = D.Telefone
FROM TPA.Funcionario F
INNER JOIN [dbo].[Contato$] D ON F.Id = D.idFuncionario

UPDATE F SET F.DataNascimento = CONVERT(VARCHAR(20), D.[Data de Nascimento],103), CPF = D.CPF, PIS = CONVERT(numeric, D.PIS)
FROM TPA.Funcionario F
INNER JOIN [dbo].[Documenta��o$] D ON F.Id = D.idFuncionario

SELECT CONVERT(numeric, D.PIS) FROM [dbo].[Documenta��o$] D

SELECT * FROM [TPA].[Contrato] order by IdFuncionario
SELECT * from Contratacao$

UPDATE F SET 
	DataAdmissao = CONVERT(VARCHAR(20),D.[Data de Admiss�o],103), 
	DataDemissao = CONVERT(VARCHAR(20),D.[Data de Demiss�o], 103), 
	Salario = d.Sal�rio
FROM TPA.[Contrato] F
INNER JOIN [dbo].Contratacao$ D ON F.idFuncionario = D.idFuncionario

UPDATE F SET RG = D.RG, PIS = CONVERT(numeric, D.PIS), CarteiraDeTrabalho = D.[CTPS/ S�rie]
FROM TPA.[Contrato] F
INNER JOIN [dbo].[Documenta��o$] D ON F.idFuncionario = D.idFuncionario