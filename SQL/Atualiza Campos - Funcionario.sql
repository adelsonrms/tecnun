select * from [dbo].[Identificação$]
SELECT * FROM TPA.Funcionario

update [dbo].[Identificação$] set [NOME COMPLETO] = UPPER([NOME COMPLETO])

UPDATE F SET F.Nome = D.[NOME COMPLETO]
FROM TPA.Funcionario F
INNER JOIN [dbo].[Identificação$] D ON F.Id = D.ID

UPDATE F SET F.Endereco = D.Endereço, Telefone = D.Telefone
FROM TPA.Funcionario F
INNER JOIN [dbo].[Contato$] D ON F.Id = D.idFuncionario

UPDATE F SET F.DataNascimento = CONVERT(VARCHAR(20), D.[Data de Nascimento],103), CPF = D.CPF, PIS = CONVERT(numeric, D.PIS)
FROM TPA.Funcionario F
INNER JOIN [dbo].[Documentação$] D ON F.Id = D.idFuncionario

SELECT CONVERT(numeric, D.PIS) FROM [dbo].[Documentação$] D

SELECT * FROM [TPA].[Contrato] order by IdFuncionario
SELECT * from Contratacao$

UPDATE F SET 
	DataAdmissao = CONVERT(VARCHAR(20),D.[Data de Admissão],103), 
	DataDemissao = CONVERT(VARCHAR(20),D.[Data de Demissão], 103), 
	Salario = d.Salário
FROM TPA.[Contrato] F
INNER JOIN [dbo].Contratacao$ D ON F.idFuncionario = D.idFuncionario

UPDATE F SET RG = D.RG, PIS = CONVERT(numeric, D.PIS), CarteiraDeTrabalho = D.[CTPS/ Série]
FROM TPA.[Contrato] F
INNER JOIN [dbo].[Documentação$] D ON F.idFuncionario = D.idFuncionario