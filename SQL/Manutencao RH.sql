use ERP
go
drop table RH.Documentos
drop table RH.Contrato
drop table RH.Modalidade
drop table RH.PerfilCargo
drop table RH.Departamento
drop table RH.Cargo
drop table RH.Funcionario
GO
DROP SCHEMA RH
GO
CREATE SCHEMA RH
go
CREATE TABLE RH.[Funcionario](
	[Id] int not null constraint [PK_RH_Funcionario] primary key  identity (1,1),
	[Nome] varchar(max) NULL,
	[CPF] varchar(max) NULL,
	[DataNascimento] VARCHAR(50) NULL,
	[Telefone] varchar(max) NULL,
	[Celular] varchar(max) NULL,
	[EmailProfissional] varchar(max) NULL,
	[Endereco] varchar(max) NULL,
	[UsuarioInclusao] varchar(100) NULL,
	[MomentoInclusao] [datetime] NULL,
	[UsuarioEdicao] varchar(max) NULL,
	[MomentoEdicao] Datetime NULL,
	[SexoID] int NOT NULL,
	Ativo bit NOT NULL DEFAULT 0
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE RH.[Funcionario] ADD  DEFAULT (getdate()) FOR [MomentoInclusao]
GO
ALTER TABLE RH.[Funcionario] ADD  DEFAULT ((0)) FOR [SexoID]
GO

 SET IDENTITY_INSERT rh.[Funcionario] ON
insert into RH.[Funcionario]
(
[Id]
      ,[Nome]
      ,[CPF]
      ,[DataNascimento]
      ,[Telefone]
      ,[Celular]
      ,[EmailProfissional]
      ,[Endereco]
      ,[UsuarioInclusao]
      ,[MomentoInclusao]
      ,[UsuarioEdicao]
      ,[MomentoEdicao]
      ,[SexoID]
	  ,Ativo
)
select 
	   a.[Id]
      ,a.[Nome]
      ,a.[CPF]
      ,a.[DataNascimento]
      ,a.[Telefone]
      ,a.[Celular]
      ,a.[EmailProfissional]
      ,a.[Endereco]
      ,a.[UsuarioInclusao]
      ,a.[MomentoInclusao]
      ,a.[UsuarioEdicao]
      ,a.[MomentoEdicao]
      ,case when a.[Id] in (1014,1015,1033,1043) then 2 else 1 end
	  ,case when b.ATIVO = 'SIM' then -1 else 0 end
from TECNUN.tpa.Funcionario a inner join tecnun.[dbo].[Identificação$] b on a.Id = b.ID
set identity_insert rh.[Funcionario] on

  GO
 
 CREATE TABLE RH.Modalidade
  (
	Id int not null primary key identity (1,1),
	NomeModalidade varchar(100)
  )
  GO
 CREATE TABLE RH.PerfilCargo
  (
	Id int not null primary key identity (1,1),
	NomePerfil varchar(100)
  )
  GO
 CREATE TABLE RH.[Departamento]
  (
	Id int not null primary key identity (1,1),
	NomeDepartamento varchar(100),
  )
  GO
 CREATE TABLE RH.[Cargo]
  (
	Id int not null primary key identity (1,1),
	NomeCargo varchar(100),
  )
      GO
 CREATE TABLE RH.Documentos
  (
	Id int not null primary key identity (1,1),
	IdFuncionario int not null constraint fk_doc_funcionario foreign key references [RH].[Funcionario](id),
  	RG_Numero varchar(50) null,
	RG_OrgaoEmissor varchar(50) null,
	RG_UF varchar(50) null,
	RG_DtEmissao varchar(50) null,
	CPF varchar(50) null,
	PIS varchar(50) null,
	TituloEleitoral_Num varchar(50) null,
	TituloEleitoral_Zona varchar(50) null,
	CartHabilitacao_Numero varchar(50) null,
	CartHabilitacao_Categoria char(1) null,
	CartTrabalho_Num varchar(50) null,
	CartTrabalho_Serie varchar(50) null,
	CertNascimento_Livro varchar(50) null,
	CBO varchar(50) null
)
  GO
 CREATE TABLE RH.Contrato
  (
	Id int not null primary key identity (1,1),
	IdFuncionario int not null constraint fk_funcionario foreign key references [RH].[Funcionario](id),
	DataAdmissao Datetime null,
	DataDemissao Datetime null,
	IdModalidade  int null constraint fk_modalidade foreign key references [RH].[Modalidade](id), 
	IdCargo  int null constraint fk_cargo foreign key references [RH].[Cargo](id), 
	IdDepto int constraint fk_depto foreign key references [RH].[Departamento](id),
	Salario money,
	IdPerfil int constraint fk_perfilcargo foreign key references [RH].PerfilCargo(id),
	UsuarioInclusao	varchar(100),
	MomentoInclusao	datetime  default getdate(),	
	UsuarioEdicao	varchar(100),
	MomentoEdicao	datetime
  )






  
	
GO

--- atualização dos dados

INSERT INTO RH.Modalidade(NomeModalidade) 
SELECT DISTINCT [Modalidade Contrat#] from tecnun.[dbo].Contratacao$ where not [Modalidade Contrat#] is null
GO
INSERT INTO RH.Modalidade(NomeModalidade) 
VALUES ('OUTROS')
 
GO
INSERT INTO RH.PerfilCargo (NomePerfil) 
SELECT distinct perfil FROM TECNUN.DBO.funcionarios where not Perfil is null
GO
INSERT INTO RH.Departamento(NomeDepartamento) 
VALUES 
('Admistrativo')
,('Desenvolvimento')
,('Fiscal');
GO
INSERT INTO RH.Departamento(NomeDepartamento) 
SELECT distinct Depto FROM TECNUN.DBO.funcionarios where not Depto is null
GO
INSERT INTO RH.[Cargo](NomeCargo) 
SELECT DISTINCT cargo from tecnun.[dbo].Contratacao$ where not Cargo is null
 
 go
 insert into RH.Contrato
 (
	IdFuncionario
 )
select Id from rh.[Funcionario]

 UPDATE F SET 
	DataAdmissao = D.[Data de Admissão],
	DataDemissao = D.[Data de Demissão],
	IdCargo = (select top 1 c.id from RH.[Cargo] c where c.NomeCargo = d.Cargo),
	Salario = D.Salário,
	IdModalidade = (select top 1 c.id from RH.Modalidade c where c.NomeModalidade = d.[Modalidade Contrat#])
FROM rh.[Contrato] F
INNER JOIN tecnun.[dbo].Contratacao$ D ON F.idFuncionario = D.idFuncionario

--select * from tecnun.[dbo].Documentação$
select * from rh.[Contrato]
select * from rh.Documentos

 go
 insert into RH.Documentos
 (
	IdFuncionario
 )
select Id from rh.[Funcionario]

 UPDATE F SET 
	 CPF = d.cpf

	,RG_Numero = d.RG
	,RG_OrgaoEmissor = d.[Orgão Emissor RG]
	,RG_UF = d.[UF RG]
	,RG_DtEmissao = d.[Data Expedição RG]

	,PIS = d.PIS

	,CartTrabalho_Num = rtrim(ltrim(SUBSTRING(d.[CTPS/ Série],0, CHARINDEX('/', d.[CTPS/ Série]))))
	,CartTrabalho_Serie = rtrim(ltrim(SUBSTRING(d.[CTPS/ Série], CHARINDEX('/', d.[CTPS/ Série])+1, 20)))

	, TituloEleitoral_Num = rtrim(ltrim(SUBSTRING(d.[Título / Zona Eleitoral],0, CHARINDEX('/', d.[Título / Zona Eleitoral]))))
	, TituloEleitoral_Zona = rtrim(ltrim(SUBSTRING(d.[Título / Zona Eleitoral], CHARINDEX('/', d.[Título / Zona Eleitoral])+1, 20)))

	,CertNascimento_Livro = d.[Matricula_Pg# Livro]
FROM rh.Documentos F
INNER JOIN tecnun.[dbo].Documentação$ D ON F.idFuncionario = D.idFuncionario

select * from tecnun.[dbo].Documentação$
select * from rh.Documentos
select rtrim(ltrim(SUBSTRING('25043 / 00017 - PI', CHARINDEX('/', '25043 / 00017 - PI')+1, 20)))