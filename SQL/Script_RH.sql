USE [ERP]
GO
/****** Object:  Schema [Regiao]    Script Date: 11/07/2018 23:12:42 ******/
CREATE SCHEMA [Regiao]
GO
/****** Object:  Schema [RH]    Script Date: 11/07/2018 23:12:42 ******/
CREATE SCHEMA [RH]
GO
/****** Object:  Table [Regiao].[Cidade]    Script Date: 11/07/2018 23:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Regiao].[Cidade](
	[CidadeID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](max) NULL,
	[Estado_EstadoID] [int] NULL,
 CONSTRAINT [PK_dbo.Cidade] PRIMARY KEY CLUSTERED 
(
	[CidadeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Regiao].[Estado]    Script Date: 11/07/2018 23:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Regiao].[Estado](
	[EstadoID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](max) NULL,
	[Codigo] [nvarchar](max) NULL,
	[UF] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Estado] PRIMARY KEY CLUSTERED 
(
	[EstadoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [RH].[Cargo]    Script Date: 11/07/2018 23:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [RH].[Cargo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NomeCargo] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [RH].[Contrato]    Script Date: 11/07/2018 23:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [RH].[Contrato](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdFuncionario] [int] NOT NULL,
	[DataAdmissao] [datetime] NULL,
	[DataDemissao] [datetime] NULL,
	[IdModalidade] [int] NULL,
	[IdCargo] [int] NULL,
	[IdDepto] [int] NULL,
	[Salario] [money] NULL,
	[IdPerfil] [int] NULL,
	[UsuarioInclusao] [varchar](100) NULL,
	[MomentoInclusao] [datetime] NULL,
	[UsuarioEdicao] [varchar](100) NULL,
	[MomentoEdicao] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [RH].[Departamento]    Script Date: 11/07/2018 23:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [RH].[Departamento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NomeDepartamento] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [RH].[Documentos]    Script Date: 11/07/2018 23:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [RH].[Documentos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdFuncionario] [int] NOT NULL,
	[RG_Numero] [varchar](50) NULL,
	[RG_OrgaoEmissor] [varchar](50) NULL,
	[RG_UF] [varchar](50) NULL,
	[RG_DtEmissao] [varchar](50) NULL,
	[CPF] [varchar](50) NULL,
	[PIS] [varchar](50) NULL,
	[TituloEleitoral_Num] [varchar](50) NULL,
	[TituloEleitoral_Zona] [varchar](50) NULL,
	[CartHabilitacao_Numero] [varchar](50) NULL,
	[CartHabilitacao_Categoria] [char](1) NULL,
	[CartTrabalho_Num] [varchar](50) NULL,
	[CartTrabalho_Serie] [varchar](50) NULL,
	[CertNascimento_Livro] [varchar](50) NULL,
	[CBO] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [RH].[Funcionario]    Script Date: 11/07/2018 23:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [RH].[Funcionario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](max) NULL,
	[DataNascimento] [varchar](50) NULL,
	[Telefone] [varchar](max) NULL,
	[Celular] [varchar](max) NULL,
	[Email] [varchar](max) NULL,
	[Endereco] [varchar](max) NULL,
	[UsuarioInclusao] [varchar](100) NULL,
	[MomentoInclusao] [datetime] NULL,
	[UsuarioEdicao] [varchar](max) NULL,
	[MomentoEdicao] [datetime] NULL,
	[SexoID] [int] NOT NULL,
	[Ativo] [bit] NOT NULL,
 CONSTRAINT [PK_RH_Funcionario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [RH].[Modalidade]    Script Date: 11/07/2018 23:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [RH].[Modalidade](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NomeModalidade] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [RH].[PerfilCargo]    Script Date: 11/07/2018 23:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [RH].[PerfilCargo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NomePerfil] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Regiao].[Cidade] ON 

INSERT [Regiao].[Cidade] ([CidadeID], [Nome], [Estado_EstadoID]) VALUES (1, N'São Paulo', 1)
SET IDENTITY_INSERT [Regiao].[Cidade] OFF
SET IDENTITY_INSERT [Regiao].[Estado] ON 

INSERT [Regiao].[Estado] ([EstadoID], [Nome], [Codigo], [UF]) VALUES (1, N'São Paulo', NULL, N'SP')
SET IDENTITY_INSERT [Regiao].[Estado] OFF
SET IDENTITY_INSERT [RH].[Cargo] ON 

INSERT [RH].[Cargo] ([Id], [NomeCargo]) VALUES (1, N'Analista de Sistemas')
INSERT [RH].[Cargo] ([Id], [NomeCargo]) VALUES (2, N'Analista de Sistemas Sênior')
INSERT [RH].[Cargo] ([Id], [NomeCargo]) VALUES (3, N'Analista Programador Pleno')
INSERT [RH].[Cargo] ([Id], [NomeCargo]) VALUES (4, N'Analista Programador Sênior')
INSERT [RH].[Cargo] ([Id], [NomeCargo]) VALUES (5, N'Analista Programador VBA A0')
INSERT [RH].[Cargo] ([Id], [NomeCargo]) VALUES (6, N'Analista Programador VBA A1')
INSERT [RH].[Cargo] ([Id], [NomeCargo]) VALUES (7, N'Analista Programador VBA A2')
INSERT [RH].[Cargo] ([Id], [NomeCargo]) VALUES (8, N'Analista Programador VBA B2')
INSERT [RH].[Cargo] ([Id], [NomeCargo]) VALUES (9, N'Analista Programador VBA C1')
INSERT [RH].[Cargo] ([Id], [NomeCargo]) VALUES (10, N'Analista Programador VBA PL 1')
INSERT [RH].[Cargo] ([Id], [NomeCargo]) VALUES (11, N'Coordenador de Projetos')
INSERT [RH].[Cargo] ([Id], [NomeCargo]) VALUES (12, N'Operador de Sistemas')
INSERT [RH].[Cargo] ([Id], [NomeCargo]) VALUES (13, N'Operador de Sistemas .Net')
INSERT [RH].[Cargo] ([Id], [NomeCargo]) VALUES (14, N'Operador de Sistemas VBA')
INSERT [RH].[Cargo] ([Id], [NomeCargo]) VALUES (15, N'Operador de Sistemas VBA A0')
INSERT [RH].[Cargo] ([Id], [NomeCargo]) VALUES (16, N'Operador de Sistemas VBA JR 0')
INSERT [RH].[Cargo] ([Id], [NomeCargo]) VALUES (17, N'Programador VBA A2')
INSERT [RH].[Cargo] ([Id], [NomeCargo]) VALUES (18, N'Programador VBA B2')
INSERT [RH].[Cargo] ([Id], [NomeCargo]) VALUES (19, N'Sócio-Proprietário')
SET IDENTITY_INSERT [RH].[Cargo] OFF
SET IDENTITY_INSERT [RH].[Contrato] ON 

INSERT [RH].[Contrato] ([Id], [IdFuncionario], [DataAdmissao], [DataDemissao], [IdModalidade], [IdCargo], [IdDepto], [Salario], [IdPerfil], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao]) VALUES (1, 1, CAST(N'2014-11-10T00:00:00.000' AS DateTime), NULL, 1, 4, NULL, 8397.6300, NULL, NULL, CAST(N'2018-07-11T22:57:52.467' AS DateTime), NULL, NULL)
INSERT [RH].[Contrato] ([Id], [IdFuncionario], [DataAdmissao], [DataDemissao], [IdModalidade], [IdCargo], [IdDepto], [Salario], [IdPerfil], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao]) VALUES (2, 2, CAST(N'2014-04-01T00:00:00.000' AS DateTime), NULL, 2, 1, NULL, 1549.4000, NULL, NULL, CAST(N'2018-07-11T22:57:52.467' AS DateTime), NULL, NULL)
INSERT [RH].[Contrato] ([Id], [IdFuncionario], [DataAdmissao], [DataDemissao], [IdModalidade], [IdCargo], [IdDepto], [Salario], [IdPerfil], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao]) VALUES (3, 3, CAST(N'2013-03-04T00:00:00.000' AS DateTime), NULL, 3, 19, NULL, 0.0000, NULL, NULL, CAST(N'2018-07-11T22:57:52.467' AS DateTime), NULL, NULL)
INSERT [RH].[Contrato] ([Id], [IdFuncionario], [DataAdmissao], [DataDemissao], [IdModalidade], [IdCargo], [IdDepto], [Salario], [IdPerfil], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao]) VALUES (4, 4, CAST(N'2014-04-01T00:00:00.000' AS DateTime), NULL, 2, 1, NULL, 1549.4000, NULL, NULL, CAST(N'2018-07-11T22:57:52.467' AS DateTime), NULL, NULL)
INSERT [RH].[Contrato] ([Id], [IdFuncionario], [DataAdmissao], [DataDemissao], [IdModalidade], [IdCargo], [IdDepto], [Salario], [IdPerfil], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao]) VALUES (5, 5, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-07-11T22:57:52.467' AS DateTime), NULL, NULL)
INSERT [RH].[Contrato] ([Id], [IdFuncionario], [DataAdmissao], [DataDemissao], [IdModalidade], [IdCargo], [IdDepto], [Salario], [IdPerfil], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao]) VALUES (6, 7, CAST(N'2015-10-13T00:00:00.000' AS DateTime), NULL, 1, 3, NULL, 5713.6000, NULL, NULL, CAST(N'2018-07-11T22:57:52.467' AS DateTime), NULL, NULL)
INSERT [RH].[Contrato] ([Id], [IdFuncionario], [DataAdmissao], [DataDemissao], [IdModalidade], [IdCargo], [IdDepto], [Salario], [IdPerfil], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao]) VALUES (7, 8, CAST(N'2016-02-11T00:00:00.000' AS DateTime), NULL, 1, 15, NULL, 1800.0000, NULL, NULL, CAST(N'2018-07-11T22:57:52.467' AS DateTime), NULL, NULL)
INSERT [RH].[Contrato] ([Id], [IdFuncionario], [DataAdmissao], [DataDemissao], [IdModalidade], [IdCargo], [IdDepto], [Salario], [IdPerfil], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao]) VALUES (8, 9, CAST(N'2014-07-01T00:00:00.000' AS DateTime), NULL, 1, 2, NULL, 3875.6600, NULL, NULL, CAST(N'2018-07-11T22:57:52.467' AS DateTime), NULL, NULL)
INSERT [RH].[Contrato] ([Id], [IdFuncionario], [DataAdmissao], [DataDemissao], [IdModalidade], [IdCargo], [IdDepto], [Salario], [IdPerfil], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao]) VALUES (9, 10, CAST(N'2016-05-02T00:00:00.000' AS DateTime), NULL, 1, 14, NULL, 1464.0000, NULL, NULL, CAST(N'2018-07-11T22:57:52.467' AS DateTime), NULL, NULL)
INSERT [RH].[Contrato] ([Id], [IdFuncionario], [DataAdmissao], [DataDemissao], [IdModalidade], [IdCargo], [IdDepto], [Salario], [IdPerfil], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao]) VALUES (10, 12, CAST(N'2016-08-01T00:00:00.000' AS DateTime), NULL, 1, 9, NULL, 4511.0000, NULL, NULL, CAST(N'2018-07-11T22:57:52.467' AS DateTime), NULL, NULL)
INSERT [RH].[Contrato] ([Id], [IdFuncionario], [DataAdmissao], [DataDemissao], [IdModalidade], [IdCargo], [IdDepto], [Salario], [IdPerfil], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao]) VALUES (11, 13, CAST(N'2016-09-01T00:00:00.000' AS DateTime), NULL, 1, 18, NULL, 3533.1500, NULL, NULL, CAST(N'2018-07-11T22:57:52.467' AS DateTime), NULL, NULL)
INSERT [RH].[Contrato] ([Id], [IdFuncionario], [DataAdmissao], [DataDemissao], [IdModalidade], [IdCargo], [IdDepto], [Salario], [IdPerfil], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao]) VALUES (12, 14, CAST(N'2016-02-15T00:00:00.000' AS DateTime), NULL, 1, 5, NULL, 1800.0000, NULL, NULL, CAST(N'2018-07-11T22:57:52.467' AS DateTime), NULL, NULL)
INSERT [RH].[Contrato] ([Id], [IdFuncionario], [DataAdmissao], [DataDemissao], [IdModalidade], [IdCargo], [IdDepto], [Salario], [IdPerfil], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao]) VALUES (13, 1014, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-07-11T22:57:52.467' AS DateTime), NULL, NULL)
INSERT [RH].[Contrato] ([Id], [IdFuncionario], [DataAdmissao], [DataDemissao], [IdModalidade], [IdCargo], [IdDepto], [Salario], [IdPerfil], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao]) VALUES (14, 1015, CAST(N'2015-09-01T00:00:00.000' AS DateTime), NULL, 1, 11, NULL, 6100.0000, NULL, NULL, CAST(N'2018-07-11T22:57:52.467' AS DateTime), NULL, NULL)
INSERT [RH].[Contrato] ([Id], [IdFuncionario], [DataAdmissao], [DataDemissao], [IdModalidade], [IdCargo], [IdDepto], [Salario], [IdPerfil], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao]) VALUES (15, 1016, CAST(N'2016-05-02T00:00:00.000' AS DateTime), NULL, 1, 5, NULL, 1800.0000, NULL, NULL, CAST(N'2018-07-11T22:57:52.467' AS DateTime), NULL, NULL)
INSERT [RH].[Contrato] ([Id], [IdFuncionario], [DataAdmissao], [DataDemissao], [IdModalidade], [IdCargo], [IdDepto], [Salario], [IdPerfil], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao]) VALUES (16, 1017, CAST(N'2014-11-10T00:00:00.000' AS DateTime), NULL, 2, 12, NULL, 1493.0000, NULL, NULL, CAST(N'2018-07-11T22:57:52.467' AS DateTime), NULL, NULL)
INSERT [RH].[Contrato] ([Id], [IdFuncionario], [DataAdmissao], [DataDemissao], [IdModalidade], [IdCargo], [IdDepto], [Salario], [IdPerfil], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao]) VALUES (17, 1018, CAST(N'2016-05-02T00:00:00.000' AS DateTime), CAST(N'2018-03-26T00:00:00.000' AS DateTime), 1, 14, NULL, 1464.0000, NULL, NULL, CAST(N'2018-07-11T22:57:52.467' AS DateTime), NULL, NULL)
INSERT [RH].[Contrato] ([Id], [IdFuncionario], [DataAdmissao], [DataDemissao], [IdModalidade], [IdCargo], [IdDepto], [Salario], [IdPerfil], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao]) VALUES (18, 1019, CAST(N'2016-01-04T00:00:00.000' AS DateTime), NULL, 1, 8, NULL, 3533.1500, NULL, NULL, CAST(N'2018-07-11T22:57:52.467' AS DateTime), NULL, NULL)
INSERT [RH].[Contrato] ([Id], [IdFuncionario], [DataAdmissao], [DataDemissao], [IdModalidade], [IdCargo], [IdDepto], [Salario], [IdPerfil], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao]) VALUES (19, 1020, CAST(N'2015-01-02T00:00:00.000' AS DateTime), NULL, 1, 2, NULL, 3875.6600, NULL, NULL, CAST(N'2018-07-11T22:57:52.467' AS DateTime), NULL, NULL)
INSERT [RH].[Contrato] ([Id], [IdFuncionario], [DataAdmissao], [DataDemissao], [IdModalidade], [IdCargo], [IdDepto], [Salario], [IdPerfil], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao]) VALUES (20, 1021, CAST(N'2016-01-18T00:00:00.000' AS DateTime), NULL, 2, 1, NULL, 1549.4000, NULL, NULL, CAST(N'2018-07-11T22:57:52.467' AS DateTime), NULL, NULL)
INSERT [RH].[Contrato] ([Id], [IdFuncionario], [DataAdmissao], [DataDemissao], [IdModalidade], [IdCargo], [IdDepto], [Salario], [IdPerfil], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao]) VALUES (21, 1022, CAST(N'2016-01-18T00:00:00.000' AS DateTime), NULL, 1, 7, NULL, 2450.0000, NULL, NULL, CAST(N'2018-07-11T22:57:52.467' AS DateTime), NULL, NULL)
INSERT [RH].[Contrato] ([Id], [IdFuncionario], [DataAdmissao], [DataDemissao], [IdModalidade], [IdCargo], [IdDepto], [Salario], [IdPerfil], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao]) VALUES (22, 1023, CAST(N'2016-08-01T00:00:00.000' AS DateTime), NULL, 1, 15, NULL, 1800.0000, NULL, NULL, CAST(N'2018-07-11T22:57:52.467' AS DateTime), NULL, NULL)
INSERT [RH].[Contrato] ([Id], [IdFuncionario], [DataAdmissao], [DataDemissao], [IdModalidade], [IdCargo], [IdDepto], [Salario], [IdPerfil], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao]) VALUES (23, 1024, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-07-11T22:57:52.467' AS DateTime), NULL, NULL)
INSERT [RH].[Contrato] ([Id], [IdFuncionario], [DataAdmissao], [DataDemissao], [IdModalidade], [IdCargo], [IdDepto], [Salario], [IdPerfil], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao]) VALUES (24, 1025, CAST(N'2017-07-17T00:00:00.000' AS DateTime), NULL, 1, 7, NULL, 2552.7000, NULL, NULL, CAST(N'2018-07-11T22:57:52.467' AS DateTime), NULL, NULL)
INSERT [RH].[Contrato] ([Id], [IdFuncionario], [DataAdmissao], [DataDemissao], [IdModalidade], [IdCargo], [IdDepto], [Salario], [IdPerfil], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao]) VALUES (25, 1026, CAST(N'2017-08-07T00:00:00.000' AS DateTime), NULL, 1, 12, NULL, 1587.0000, NULL, NULL, CAST(N'2018-07-11T22:57:52.467' AS DateTime), NULL, NULL)
INSERT [RH].[Contrato] ([Id], [IdFuncionario], [DataAdmissao], [DataDemissao], [IdModalidade], [IdCargo], [IdDepto], [Salario], [IdPerfil], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao]) VALUES (26, 1027, CAST(N'2017-08-01T00:00:00.000' AS DateTime), NULL, 1, 13, NULL, 5350.0000, NULL, NULL, CAST(N'2018-07-11T22:57:52.467' AS DateTime), NULL, NULL)
INSERT [RH].[Contrato] ([Id], [IdFuncionario], [DataAdmissao], [DataDemissao], [IdModalidade], [IdCargo], [IdDepto], [Salario], [IdPerfil], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao]) VALUES (27, 1028, CAST(N'2016-05-02T00:00:00.000' AS DateTime), NULL, 1, 17, NULL, 2450.0000, NULL, NULL, CAST(N'2018-07-11T22:57:52.467' AS DateTime), NULL, NULL)
INSERT [RH].[Contrato] ([Id], [IdFuncionario], [DataAdmissao], [DataDemissao], [IdModalidade], [IdCargo], [IdDepto], [Salario], [IdPerfil], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao]) VALUES (28, 1029, CAST(N'2018-05-25T00:00:00.000' AS DateTime), NULL, 1, 16, NULL, 1915.0000, NULL, NULL, CAST(N'2018-07-11T22:57:52.467' AS DateTime), NULL, NULL)
INSERT [RH].[Contrato] ([Id], [IdFuncionario], [DataAdmissao], [DataDemissao], [IdModalidade], [IdCargo], [IdDepto], [Salario], [IdPerfil], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao]) VALUES (29, 1030, CAST(N'2018-06-04T00:00:00.000' AS DateTime), NULL, 1, 10, NULL, 3504.7500, NULL, NULL, CAST(N'2018-07-11T22:57:52.467' AS DateTime), NULL, NULL)
INSERT [RH].[Contrato] ([Id], [IdFuncionario], [DataAdmissao], [DataDemissao], [IdModalidade], [IdCargo], [IdDepto], [Salario], [IdPerfil], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao]) VALUES (30, 1031, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-07-11T22:57:52.467' AS DateTime), NULL, NULL)
INSERT [RH].[Contrato] ([Id], [IdFuncionario], [DataAdmissao], [DataDemissao], [IdModalidade], [IdCargo], [IdDepto], [Salario], [IdPerfil], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao]) VALUES (31, 1033, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-07-11T22:57:52.467' AS DateTime), NULL, NULL)
INSERT [RH].[Contrato] ([Id], [IdFuncionario], [DataAdmissao], [DataDemissao], [IdModalidade], [IdCargo], [IdDepto], [Salario], [IdPerfil], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao]) VALUES (32, 1034, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-07-11T22:57:52.467' AS DateTime), NULL, NULL)
INSERT [RH].[Contrato] ([Id], [IdFuncionario], [DataAdmissao], [DataDemissao], [IdModalidade], [IdCargo], [IdDepto], [Salario], [IdPerfil], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao]) VALUES (33, 1036, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-07-11T22:57:52.467' AS DateTime), NULL, NULL)
INSERT [RH].[Contrato] ([Id], [IdFuncionario], [DataAdmissao], [DataDemissao], [IdModalidade], [IdCargo], [IdDepto], [Salario], [IdPerfil], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao]) VALUES (34, 1037, CAST(N'2016-05-02T00:00:00.000' AS DateTime), NULL, 1, 5, NULL, 1800.0000, NULL, NULL, CAST(N'2018-07-11T22:57:52.467' AS DateTime), NULL, NULL)
INSERT [RH].[Contrato] ([Id], [IdFuncionario], [DataAdmissao], [DataDemissao], [IdModalidade], [IdCargo], [IdDepto], [Salario], [IdPerfil], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao]) VALUES (35, 1038, CAST(N'2016-09-01T00:00:00.000' AS DateTime), NULL, 1, 6, NULL, 2130.0000, NULL, NULL, CAST(N'2018-07-11T22:57:52.467' AS DateTime), NULL, NULL)
INSERT [RH].[Contrato] ([Id], [IdFuncionario], [DataAdmissao], [DataDemissao], [IdModalidade], [IdCargo], [IdDepto], [Salario], [IdPerfil], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao]) VALUES (36, 1039, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-07-11T22:57:52.467' AS DateTime), NULL, NULL)
INSERT [RH].[Contrato] ([Id], [IdFuncionario], [DataAdmissao], [DataDemissao], [IdModalidade], [IdCargo], [IdDepto], [Salario], [IdPerfil], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao]) VALUES (37, 1042, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-07-11T22:57:52.467' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [RH].[Contrato] OFF
SET IDENTITY_INSERT [RH].[Departamento] ON 

INSERT [RH].[Departamento] ([Id], [NomeDepartamento]) VALUES (1, N'Admistrativo')
INSERT [RH].[Departamento] ([Id], [NomeDepartamento]) VALUES (2, N'Desenvolvimento')
INSERT [RH].[Departamento] ([Id], [NomeDepartamento]) VALUES (3, N'Fiscal')
INSERT [RH].[Departamento] ([Id], [NomeDepartamento]) VALUES (4, N'Automação Office/VBA')
INSERT [RH].[Departamento] ([Id], [NomeDepartamento]) VALUES (5, N'Comercial')
INSERT [RH].[Departamento] ([Id], [NomeDepartamento]) VALUES (6, N'Desenvovimento .NET')
INSERT [RH].[Departamento] ([Id], [NomeDepartamento]) VALUES (7, N'Projetos')
SET IDENTITY_INSERT [RH].[Departamento] OFF
SET IDENTITY_INSERT [RH].[Documentos] ON 

INSERT [RH].[Documentos] ([Id], [IdFuncionario], [RG_Numero], [RG_OrgaoEmissor], [RG_UF], [RG_DtEmissao], [CPF], [PIS], [TituloEleitoral_Num], [TituloEleitoral_Zona], [CartHabilitacao_Numero], [CartHabilitacao_Categoria], [CartTrabalho_Num], [CartTrabalho_Serie], [CertNascimento_Livro], [CBO]) VALUES (1, 1, N'33.516.598-9', NULL, NULL, NULL, N'299.185.168-60', NULL, N'282704430141', N'253', NULL, NULL, N'99071', N'00256 - SP', N'8', NULL)
INSERT [RH].[Documentos] ([Id], [IdFuncionario], [RG_Numero], [RG_OrgaoEmissor], [RG_UF], [RG_DtEmissao], [CPF], [PIS], [TituloEleitoral_Num], [TituloEleitoral_Zona], [CartHabilitacao_Numero], [CartHabilitacao_Categoria], [CartTrabalho_Num], [CartTrabalho_Serie], [CertNascimento_Livro], [CBO]) VALUES (2, 2, N'38.810.94-9', N'SSP', N'BA', N'38048', N'307.259.088-58', N'1.30185e+010', NULL, NULL, NULL, NULL, N'25043', N'00017 - PI', N'2', NULL)
INSERT [RH].[Documentos] ([Id], [IdFuncionario], [RG_Numero], [RG_OrgaoEmissor], [RG_UF], [RG_DtEmissao], [CPF], [PIS], [TituloEleitoral_Num], [TituloEleitoral_Zona], [CartHabilitacao_Numero], [CartHabilitacao_Categoria], [CartTrabalho_Num], [CartTrabalho_Serie], [CertNascimento_Livro], [CBO]) VALUES (3, 3, N'26.867.841-8', NULL, NULL, NULL, N'250.978.958-94', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [RH].[Documentos] ([Id], [IdFuncionario], [RG_Numero], [RG_OrgaoEmissor], [RG_UF], [RG_DtEmissao], [CPF], [PIS], [TituloEleitoral_Num], [TituloEleitoral_Zona], [CartHabilitacao_Numero], [CartHabilitacao_Categoria], [CartTrabalho_Num], [CartTrabalho_Serie], [CertNascimento_Livro], [CBO]) VALUES (4, 4, N'27.565.785-1', N'SSP', N'SP', N'04/06/1991', N'272.490.338-24', N'1.25011e+010', N'289738210116', N'374', NULL, NULL, N'73801', N'00183 - SP', N'3', NULL)
INSERT [RH].[Documentos] ([Id], [IdFuncionario], [RG_Numero], [RG_OrgaoEmissor], [RG_UF], [RG_DtEmissao], [CPF], [PIS], [TituloEleitoral_Num], [TituloEleitoral_Zona], [CartHabilitacao_Numero], [CartHabilitacao_Categoria], [CartTrabalho_Num], [CartTrabalho_Serie], [CertNascimento_Livro], [CBO]) VALUES (5, 5, N'22.076.976-X', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [RH].[Documentos] ([Id], [IdFuncionario], [RG_Numero], [RG_OrgaoEmissor], [RG_UF], [RG_DtEmissao], [CPF], [PIS], [TituloEleitoral_Num], [TituloEleitoral_Zona], [CartHabilitacao_Numero], [CartHabilitacao_Categoria], [CartTrabalho_Num], [CartTrabalho_Serie], [CertNascimento_Livro], [CBO]) VALUES (6, 7, N'27.143.270-6', NULL, NULL, NULL, N'318.376.178-56', N'1.30169e+010', N'312015950108', N'258', NULL, NULL, N'005455', N'252 - SP', N'12', NULL)
INSERT [RH].[Documentos] ([Id], [IdFuncionario], [RG_Numero], [RG_OrgaoEmissor], [RG_UF], [RG_DtEmissao], [CPF], [PIS], [TituloEleitoral_Num], [TituloEleitoral_Zona], [CartHabilitacao_Numero], [CartHabilitacao_Categoria], [CartTrabalho_Num], [CartTrabalho_Serie], [CertNascimento_Livro], [CBO]) VALUES (7, 8, N'49.206.807-0', NULL, NULL, NULL, N'419.430.818-24', N'1.38545e+010', N'362063520141', N'325', NULL, NULL, N'017042', N'00365 - SP', N'17', NULL)
INSERT [RH].[Documentos] ([Id], [IdFuncionario], [RG_Numero], [RG_OrgaoEmissor], [RG_UF], [RG_DtEmissao], [CPF], [PIS], [TituloEleitoral_Num], [TituloEleitoral_Zona], [CartHabilitacao_Numero], [CartHabilitacao_Categoria], [CartTrabalho_Num], [CartTrabalho_Serie], [CertNascimento_Livro], [CBO]) VALUES (8, 9, N'36.061.171-0', N'SSP', N'SP', N'23/03/2009', N'406.642.048-64', N'1.90332e+010', N'362083820175', N'325', NULL, NULL, N'051684', N'00352 - SP', N'4', NULL)
INSERT [RH].[Documentos] ([Id], [IdFuncionario], [RG_Numero], [RG_OrgaoEmissor], [RG_UF], [RG_DtEmissao], [CPF], [PIS], [TituloEleitoral_Num], [TituloEleitoral_Zona], [CartHabilitacao_Numero], [CartHabilitacao_Categoria], [CartTrabalho_Num], [CartTrabalho_Serie], [CertNascimento_Livro], [CBO]) VALUES (9, 10, N'49.945.020-6', N'SSP', N'SP', N'15/08/2013', N'440.935.778-62', N'1.40873e+010', N'425699940132', N'354', NULL, NULL, N'7303', N'419 - SP', N'23', NULL)
INSERT [RH].[Documentos] ([Id], [IdFuncionario], [RG_Numero], [RG_OrgaoEmissor], [RG_UF], [RG_DtEmissao], [CPF], [PIS], [TituloEleitoral_Num], [TituloEleitoral_Zona], [CartHabilitacao_Numero], [CartHabilitacao_Categoria], [CartTrabalho_Num], [CartTrabalho_Serie], [CertNascimento_Livro], [CBO]) VALUES (10, 12, N'34.422.772-8', NULL, NULL, NULL, N'301.941.538.19', N'1.3226e+010', N'282859450141', N'255', NULL, NULL, N'002232', N'00247-SP', N'25', NULL)
INSERT [RH].[Documentos] ([Id], [IdFuncionario], [RG_Numero], [RG_OrgaoEmissor], [RG_UF], [RG_DtEmissao], [CPF], [PIS], [TituloEleitoral_Num], [TituloEleitoral_Zona], [CartHabilitacao_Numero], [CartHabilitacao_Categoria], [CartTrabalho_Num], [CartTrabalho_Serie], [CertNascimento_Livro], [CBO]) VALUES (11, 13, N'15.340.608-2', N'SSP', N'SP', N'42275', N'055.444.688-00', NULL, N'081906310159', N'375', NULL, NULL, N'024111', N'634 - SP', N'26', NULL)
INSERT [RH].[Documentos] ([Id], [IdFuncionario], [RG_Numero], [RG_OrgaoEmissor], [RG_UF], [RG_DtEmissao], [CPF], [PIS], [TituloEleitoral_Num], [TituloEleitoral_Zona], [CartHabilitacao_Numero], [CartHabilitacao_Categoria], [CartTrabalho_Num], [CartTrabalho_Serie], [CertNascimento_Livro], [CBO]) VALUES (12, 14, N'1387197053', N'SSP', N'PI', NULL, N'053.286.905-24', NULL, N'150337930507', N'056', NULL, NULL, N'3636397', N'00040 - BA', N'18', NULL)
INSERT [RH].[Documentos] ([Id], [IdFuncionario], [RG_Numero], [RG_OrgaoEmissor], [RG_UF], [RG_DtEmissao], [CPF], [PIS], [TituloEleitoral_Num], [TituloEleitoral_Zona], [CartHabilitacao_Numero], [CartHabilitacao_Categoria], [CartTrabalho_Num], [CartTrabalho_Serie], [CertNascimento_Livro], [CBO]) VALUES (13, 1014, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30', NULL)
INSERT [RH].[Documentos] ([Id], [IdFuncionario], [RG_Numero], [RG_OrgaoEmissor], [RG_UF], [RG_DtEmissao], [CPF], [PIS], [TituloEleitoral_Num], [TituloEleitoral_Zona], [CartHabilitacao_Numero], [CartHabilitacao_Categoria], [CartTrabalho_Num], [CartTrabalho_Serie], [CertNascimento_Livro], [CBO]) VALUES (14, 1015, N'40.238.076-9', N'SSP', N'SP', N'22/07/2015', N'325.146.608-90', N'1.36188e+010', N'301036270167', N'099', NULL, NULL, N'066135', N'269 - SP', N'10', NULL)
INSERT [RH].[Documentos] ([Id], [IdFuncionario], [RG_Numero], [RG_OrgaoEmissor], [RG_UF], [RG_DtEmissao], [CPF], [PIS], [TituloEleitoral_Num], [TituloEleitoral_Zona], [CartHabilitacao_Numero], [CartHabilitacao_Categoria], [CartTrabalho_Num], [CartTrabalho_Serie], [CertNascimento_Livro], [CBO]) VALUES (15, 1016, N'42.736.475-9', N'SSP', N'SP', N'20/10/2016', N'362.503.348-82', N'1.36515e+010', N'346469210108', N'280', NULL, NULL, N'1717', N'00337 - SP', N'21', NULL)
INSERT [RH].[Documentos] ([Id], [IdFuncionario], [RG_Numero], [RG_OrgaoEmissor], [RG_UF], [RG_DtEmissao], [CPF], [PIS], [TituloEleitoral_Num], [TituloEleitoral_Zona], [CartHabilitacao_Numero], [CartHabilitacao_Categoria], [CartTrabalho_Num], [CartTrabalho_Serie], [CertNascimento_Livro], [CBO]) VALUES (16, 1017, N'26.583.268-8', N'SSP', N'SP', N'41914', N'279.725.788-00', N'1.26455e+010', N'276559210159', N'006', NULL, NULL, N'0029663', N'00236 - SP', N'7', NULL)
INSERT [RH].[Documentos] ([Id], [IdFuncionario], [RG_Numero], [RG_OrgaoEmissor], [RG_UF], [RG_DtEmissao], [CPF], [PIS], [TituloEleitoral_Num], [TituloEleitoral_Zona], [CartHabilitacao_Numero], [CartHabilitacao_Categoria], [CartTrabalho_Num], [CartTrabalho_Serie], [CertNascimento_Livro], [CBO]) VALUES (17, 1018, N'50.859.423-6', N'SSP', N'SP', N'16/10/2015', N'484.276.968-84', N'1.56432e+010', NULL, NULL, NULL, NULL, N'19724', N'00422 - SP', N'20', NULL)
INSERT [RH].[Documentos] ([Id], [IdFuncionario], [RG_Numero], [RG_OrgaoEmissor], [RG_UF], [RG_DtEmissao], [CPF], [PIS], [TituloEleitoral_Num], [TituloEleitoral_Zona], [CartHabilitacao_Numero], [CartHabilitacao_Categoria], [CartTrabalho_Num], [CartTrabalho_Serie], [CertNascimento_Livro], [CBO]) VALUES (18, 1019, N'38.138.073-7', N'SSP', N'SP', N'26/12/2002', N'437.212.268-36', N'1.54476e+010', N'399512410116', N'413', NULL, NULL, N'081261', N'00397 - SP', N'14', NULL)
INSERT [RH].[Documentos] ([Id], [IdFuncionario], [RG_Numero], [RG_OrgaoEmissor], [RG_UF], [RG_DtEmissao], [CPF], [PIS], [TituloEleitoral_Num], [TituloEleitoral_Zona], [CartHabilitacao_Numero], [CartHabilitacao_Categoria], [CartTrabalho_Num], [CartTrabalho_Serie], [CertNascimento_Livro], [CBO]) VALUES (19, 1020, N'47.065.433-8', N'SSP', N'SP', N'19/01/2009', N'402.912.848-33', N'1.37642e+010', N'368368020159', N'258', NULL, NULL, N'63165', N'00350 - SP', N'9', NULL)
INSERT [RH].[Documentos] ([Id], [IdFuncionario], [RG_Numero], [RG_OrgaoEmissor], [RG_UF], [RG_DtEmissao], [CPF], [PIS], [TituloEleitoral_Num], [TituloEleitoral_Zona], [CartHabilitacao_Numero], [CartHabilitacao_Categoria], [CartTrabalho_Num], [CartTrabalho_Serie], [CertNascimento_Livro], [CBO]) VALUES (20, 1021, N'22.019.519-5', NULL, NULL, NULL, N'132.433.328-69', N'1.23723e+010', N'264875980124', N'287', NULL, NULL, N'57808', N'00195 - SP', N'16', NULL)
INSERT [RH].[Documentos] ([Id], [IdFuncionario], [RG_Numero], [RG_OrgaoEmissor], [RG_UF], [RG_DtEmissao], [CPF], [PIS], [TituloEleitoral_Num], [TituloEleitoral_Zona], [CartHabilitacao_Numero], [CartHabilitacao_Categoria], [CartTrabalho_Num], [CartTrabalho_Serie], [CertNascimento_Livro], [CBO]) VALUES (21, 1022, N'49.102.543-9', NULL, NULL, NULL, N'368.092.028-89', N'2.01402e+010', N'389561540116', N'417', NULL, NULL, N'018359', N'00383 - SP', N'15', NULL)
INSERT [RH].[Documentos] ([Id], [IdFuncionario], [RG_Numero], [RG_OrgaoEmissor], [RG_UF], [RG_DtEmissao], [CPF], [PIS], [TituloEleitoral_Num], [TituloEleitoral_Zona], [CartHabilitacao_Numero], [CartHabilitacao_Categoria], [CartTrabalho_Num], [CartTrabalho_Serie], [CertNascimento_Livro], [CBO]) VALUES (22, 1023, N'49.160.041-0', N'SSP', N'SP', N'43450', N'419.698.958-61', N'1.37985e+010', N'392149730175', N'422', NULL, NULL, N'021442', N'0403 - SP', N'24', NULL)
INSERT [RH].[Documentos] ([Id], [IdFuncionario], [RG_Numero], [RG_OrgaoEmissor], [RG_UF], [RG_DtEmissao], [CPF], [PIS], [TituloEleitoral_Num], [TituloEleitoral_Zona], [CartHabilitacao_Numero], [CartHabilitacao_Categoria], [CartTrabalho_Num], [CartTrabalho_Serie], [CertNascimento_Livro], [CBO]) VALUES (23, 1024, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'31', NULL)
INSERT [RH].[Documentos] ([Id], [IdFuncionario], [RG_Numero], [RG_OrgaoEmissor], [RG_UF], [RG_DtEmissao], [CPF], [PIS], [TituloEleitoral_Num], [TituloEleitoral_Zona], [CartHabilitacao_Numero], [CartHabilitacao_Categoria], [CartTrabalho_Num], [CartTrabalho_Serie], [CertNascimento_Livro], [CBO]) VALUES (24, 1025, N'43.889.546-0', NULL, NULL, NULL, N'337.429.828-18', NULL, N'337933760167', N'253', NULL, NULL, N'85405', N'00297 - SP', N'32', NULL)
INSERT [RH].[Documentos] ([Id], [IdFuncionario], [RG_Numero], [RG_OrgaoEmissor], [RG_UF], [RG_DtEmissao], [CPF], [PIS], [TituloEleitoral_Num], [TituloEleitoral_Zona], [CartHabilitacao_Numero], [CartHabilitacao_Categoria], [CartTrabalho_Num], [CartTrabalho_Serie], [CertNascimento_Livro], [CBO]) VALUES (25, 1026, N'53.030.886-1', NULL, NULL, NULL, N'449.940.938-63', NULL, N'422732680116', N'303', NULL, NULL, N'031608', N'00422 - SP', N'34', NULL)
INSERT [RH].[Documentos] ([Id], [IdFuncionario], [RG_Numero], [RG_OrgaoEmissor], [RG_UF], [RG_DtEmissao], [CPF], [PIS], [TituloEleitoral_Num], [TituloEleitoral_Zona], [CartHabilitacao_Numero], [CartHabilitacao_Categoria], [CartTrabalho_Num], [CartTrabalho_Serie], [CertNascimento_Livro], [CBO]) VALUES (26, 1027, N'45.182.014-9', NULL, NULL, NULL, N'216.895.678-21', NULL, N'299026120141', N'284', NULL, NULL, N'018596', N'00249 - SP', N'33', NULL)
INSERT [RH].[Documentos] ([Id], [IdFuncionario], [RG_Numero], [RG_OrgaoEmissor], [RG_UF], [RG_DtEmissao], [CPF], [PIS], [TituloEleitoral_Num], [TituloEleitoral_Zona], [CartHabilitacao_Numero], [CartHabilitacao_Categoria], [CartTrabalho_Num], [CartTrabalho_Serie], [CertNascimento_Livro], [CBO]) VALUES (27, 1028, N'21.524.588-7', N'Detran', N'RJ', N'22/06/2010', N'111.717.557-08', NULL, N'395714590116', N'264', NULL, NULL, N'49314', N'00380 - SP', N'22', NULL)
INSERT [RH].[Documentos] ([Id], [IdFuncionario], [RG_Numero], [RG_OrgaoEmissor], [RG_UF], [RG_DtEmissao], [CPF], [PIS], [TituloEleitoral_Num], [TituloEleitoral_Zona], [CartHabilitacao_Numero], [CartHabilitacao_Categoria], [CartTrabalho_Num], [CartTrabalho_Serie], [CertNascimento_Livro], [CBO]) VALUES (28, 1029, N'43.999.209-6', N'SSP', N'SP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [RH].[Documentos] ([Id], [IdFuncionario], [RG_Numero], [RG_OrgaoEmissor], [RG_UF], [RG_DtEmissao], [CPF], [PIS], [TituloEleitoral_Num], [TituloEleitoral_Zona], [CartHabilitacao_Numero], [CartHabilitacao_Categoria], [CartTrabalho_Num], [CartTrabalho_Serie], [CertNascimento_Livro], [CBO]) VALUES (29, 1030, N'44.219.318-X', N'SSP', N'SP', NULL, N'342.716.298-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [RH].[Documentos] ([Id], [IdFuncionario], [RG_Numero], [RG_OrgaoEmissor], [RG_UF], [RG_DtEmissao], [CPF], [PIS], [TituloEleitoral_Num], [TituloEleitoral_Zona], [CartHabilitacao_Numero], [CartHabilitacao_Categoria], [CartTrabalho_Num], [CartTrabalho_Serie], [CertNascimento_Livro], [CBO]) VALUES (30, 1031, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'5', NULL)
INSERT [RH].[Documentos] ([Id], [IdFuncionario], [RG_Numero], [RG_OrgaoEmissor], [RG_UF], [RG_DtEmissao], [CPF], [PIS], [TituloEleitoral_Num], [TituloEleitoral_Zona], [CartHabilitacao_Numero], [CartHabilitacao_Categoria], [CartTrabalho_Num], [CartTrabalho_Serie], [CertNascimento_Livro], [CBO]) VALUES (31, 1033, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [RH].[Documentos] ([Id], [IdFuncionario], [RG_Numero], [RG_OrgaoEmissor], [RG_UF], [RG_DtEmissao], [CPF], [PIS], [TituloEleitoral_Num], [TituloEleitoral_Zona], [CartHabilitacao_Numero], [CartHabilitacao_Categoria], [CartTrabalho_Num], [CartTrabalho_Serie], [CertNascimento_Livro], [CBO]) VALUES (32, 1034, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'11', NULL)
INSERT [RH].[Documentos] ([Id], [IdFuncionario], [RG_Numero], [RG_OrgaoEmissor], [RG_UF], [RG_DtEmissao], [CPF], [PIS], [TituloEleitoral_Num], [TituloEleitoral_Zona], [CartHabilitacao_Numero], [CartHabilitacao_Categoria], [CartTrabalho_Num], [CartTrabalho_Serie], [CertNascimento_Livro], [CBO]) VALUES (33, 1036, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'13', NULL)
INSERT [RH].[Documentos] ([Id], [IdFuncionario], [RG_Numero], [RG_OrgaoEmissor], [RG_UF], [RG_DtEmissao], [CPF], [PIS], [TituloEleitoral_Num], [TituloEleitoral_Zona], [CartHabilitacao_Numero], [CartHabilitacao_Categoria], [CartTrabalho_Num], [CartTrabalho_Serie], [CertNascimento_Livro], [CBO]) VALUES (34, 1037, N'42.084.454-5', NULL, NULL, NULL, N'442.308.478-31', N'1.43023e+010', N'393050700108', N'273', NULL, NULL, N'57698', N'00390 - SP', N'19', NULL)
INSERT [RH].[Documentos] ([Id], [IdFuncionario], [RG_Numero], [RG_OrgaoEmissor], [RG_UF], [RG_DtEmissao], [CPF], [PIS], [TituloEleitoral_Num], [TituloEleitoral_Zona], [CartHabilitacao_Numero], [CartHabilitacao_Categoria], [CartTrabalho_Num], [CartTrabalho_Serie], [CertNascimento_Livro], [CBO]) VALUES (35, 1038, N'43.662.558-1', NULL, NULL, NULL, N'364.767.108-85', NULL, N'325174370175', N'006', NULL, NULL, N'075096', N'00418 - SP', N'27', NULL)
INSERT [RH].[Documentos] ([Id], [IdFuncionario], [RG_Numero], [RG_OrgaoEmissor], [RG_UF], [RG_DtEmissao], [CPF], [PIS], [TituloEleitoral_Num], [TituloEleitoral_Zona], [CartHabilitacao_Numero], [CartHabilitacao_Categoria], [CartTrabalho_Num], [CartTrabalho_Serie], [CertNascimento_Livro], [CBO]) VALUES (36, 1039, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'28', NULL)
INSERT [RH].[Documentos] ([Id], [IdFuncionario], [RG_Numero], [RG_OrgaoEmissor], [RG_UF], [RG_DtEmissao], [CPF], [PIS], [TituloEleitoral_Num], [TituloEleitoral_Zona], [CartHabilitacao_Numero], [CartHabilitacao_Categoria], [CartTrabalho_Num], [CartTrabalho_Serie], [CertNascimento_Livro], [CBO]) VALUES (37, 1042, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [RH].[Documentos] OFF
SET IDENTITY_INSERT [RH].[Funcionario] ON 

INSERT [RH].[Funcionario] ([Id], [Nome], [DataNascimento], [Telefone], [Celular], [Email], [Endereco], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao], [SexoID], [Ativo]) VALUES (1, N'VITOR LUIS RUBIO', N'14/02/1983', N'(11) 97992-4544', N'', N'vitor@tecnun.com.br', N'Travessa Amélia Brandão Neri, 24
Parque Maria Luisa, São Paulo - 03450-080', NULL, NULL, NULL, NULL, 1, 0)
INSERT [RH].[Funcionario] ([Id], [Nome], [DataNascimento], [Telefone], [Celular], [Email], [Endereco], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao], [SexoID], [Ativo]) VALUES (2, N'ADELSON ROSENDO MARQUES DA SILVA', N'14/08/1982', N'(11) 96798-0117', N'+55 (11) 9 6798-0117', N'adelson@tecnun.com.br', N'Rua José Adão, 58
Vila dos Palmares, São Paulo - 05273-110', NULL, NULL, NULL, NULL, 1, 1)
INSERT [RH].[Funcionario] ([Id], [Nome], [DataNascimento], [Telefone], [Celular], [Email], [Endereco], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao], [SexoID], [Ativo]) VALUES (3, N'HENRIQUE MATIAS DE FREITAS OLIVEIRA', N'22/09/1976', N'(11) 98800-8036', N'', N'henrique@tecnun.com.br', N'Av. Paulo Lincoln do Valle Potin, 266 - Ap. 28
Jaçanã, São Paulo, SP - 02273-010', NULL, CAST(N'2018-07-09T22:34:06.057' AS DateTime), NULL, NULL, 1, 1)
INSERT [RH].[Funcionario] ([Id], [Nome], [DataNascimento], [Telefone], [Celular], [Email], [Endereco], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao], [SexoID], [Ativo]) VALUES (4, N'FERNANDO ORTEGA CIPRIANO DE OLIVEIRA', N'22/11/1978', N'(11) 99861-4670', N'+55 (11) 99861-4670', N'ortega@tecnun.com.br', N'Rua Cândido Fontoura, 575
Jardim Boa Vista, São Paulo - 05583-070', NULL, NULL, NULL, NULL, 1, 1)
INSERT [RH].[Funcionario] ([Id], [Nome], [DataNascimento], [Telefone], [Celular], [Email], [Endereco], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao], [SexoID], [Ativo]) VALUES (5, N'JEFFERSON ROCHA FIGUEROA DANTAS', N'04/04/1986', N'(11) 98982-1719', N'', N'jefferson@tecnun.com.br', N'Av. Edmundo Amaral, 3935 - Bloco 7 - Ap. 113
Piratininga, Osasco, SP - 06230-150', NULL, NULL, NULL, NULL, 1, 1)
INSERT [RH].[Funcionario] ([Id], [Nome], [DataNascimento], [Telefone], [Celular], [Email], [Endereco], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao], [SexoID], [Ativo]) VALUES (7, N'ULISSES RIBEIRO DA SILVA', N'30/11/1982', N'(11) 99886-9363', N'', N'ulisses@tecnun.com.br', N'Estrada das Lágrimas, 247 - Bl. 7 - Ap. 31
Ipiranga, Sâo Paulo, SP - 04232-000', NULL, NULL, NULL, NULL, 1, 1)
INSERT [RH].[Funcionario] ([Id], [Nome], [DataNascimento], [Telefone], [Celular], [Email], [Endereco], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao], [SexoID], [Ativo]) VALUES (8, N'HUGO FRANCEZ VILARIM DE SOUZA', N'11/04/1993', N'(11) 99438-0914', N'', N'hugo@tecnun.com.br', N'Rua Perry Sales, 219
Conj. Hab. Turística, São Paulo - 05164-130', NULL, NULL, NULL, NULL, 1, 1)
INSERT [RH].[Funcionario] ([Id], [Nome], [DataNascimento], [Telefone], [Celular], [Email], [Endereco], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao], [SexoID], [Ativo]) VALUES (9, N'JONATHAN ROCHA FIGUEROA DANTAS', N'11/02/1993', N'(11) 98599-0527', N'', N'jonathan@tecnun.com.br', N'Rua Ambrósia do México, 296
Jardim Cidade Pirituba, São Paulo - 02945-040', NULL, NULL, NULL, NULL, 1, 1)
INSERT [RH].[Funcionario] ([Id], [Nome], [DataNascimento], [Telefone], [Celular], [Email], [Endereco], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao], [SexoID], [Ativo]) VALUES (10, N'LEANDRO DA PAZ LOPES', N'25/05/1997', N'(11) 96329-0628', N'(11)96170-9571', N'leandro@tecnun.com.br', N'Rua das Margaridas, 181 
Ipês (Polvilho), Cajamar, SP – 07791-790', NULL, NULL, NULL, NULL, 1, 1)
INSERT [RH].[Funcionario] ([Id], [Nome], [DataNascimento], [Telefone], [Celular], [Email], [Endereco], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao], [SexoID], [Ativo]) VALUES (12, N'EDUARDO DEL CHIARO AMANCIO', N'03/09/1982', N'(11) 96688-0202', N'', N'eduardo@tecnun.com.br', N'Rua Dr. Bernardino Gomes, 143 - A
Vila Santista, São Paulo - 02560-000', NULL, NULL, NULL, NULL, 1, 1)
INSERT [RH].[Funcionario] ([Id], [Nome], [DataNascimento], [Telefone], [Celular], [Email], [Endereco], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao], [SexoID], [Ativo]) VALUES (13, N'HIRLEI DE PAULA FILHO', N'16/04/1964', N'(11) 99319-0561', N'', N'hirlei@tecnun.com.br', N'Rua Doutor Paulo Queiroz, 1718 - Casa 2
Jardim Nove de Julho, São Paulo - 03951-090', NULL, CAST(N'2018-07-09T22:34:06.057' AS DateTime), NULL, NULL, 1, 0)
INSERT [RH].[Funcionario] ([Id], [Nome], [DataNascimento], [Telefone], [Celular], [Email], [Endereco], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao], [SexoID], [Ativo]) VALUES (14, N'WELDER MARQUES DA COSTA', N'05/04/1995', N'(11) 97056-2506', N'', N'welder@tecnun.com.br', N'Rua José Adão, 58
Vila dos Palmares, São Paulo - 05273-110', NULL, NULL, NULL, NULL, 1, 1)
INSERT [RH].[Funcionario] ([Id], [Nome], [DataNascimento], [Telefone], [Celular], [Email], [Endereco], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao], [SexoID], [Ativo]) VALUES (1014, N'ELISA DE FREITAS REIS PINTO DA CUNHA', NULL, NULL, N'', N'elisa@tecnun.com.br', NULL, NULL, NULL, NULL, NULL, 2, 0)
INSERT [RH].[Funcionario] ([Id], [Nome], [DataNascimento], [Telefone], [Celular], [Email], [Endereco], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao], [SexoID], [Ativo]) VALUES (1015, N'MILENE CELESTINO BISPO', N'21/01/1984', N'(11) 96055-3966', N'', N'milene@tecnun.com.br', N'Rua Teodoro Sampaio, 1675 - Apto. 13
Pinheiros, São Paulo - 05405-150', NULL, NULL, NULL, NULL, 2, 0)
INSERT [RH].[Funcionario] ([Id], [Nome], [DataNascimento], [Telefone], [Celular], [Email], [Endereco], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao], [SexoID], [Ativo]) VALUES (1016, N'EDSON JOSÉ DE FREITAS NETO', N'19/11/1987', N'(11) 94211-2554', N'', N'edson@tecnun.com.br', N'Rua Comercindo Antônio de Oliveira, 15
Jardim Guanhembu, São Paulo – 04814-080', NULL, NULL, NULL, NULL, 1, 1)
INSERT [RH].[Funcionario] ([Id], [Nome], [DataNascimento], [Telefone], [Celular], [Email], [Endereco], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao], [SexoID], [Ativo]) VALUES (1017, N'FERNANDO REIS COUTO FERNANDES', N'18/02/1979', N'(11) 95302-7737', N'', N'fernando@tecnun.com.br', N'Alameda Casa Branca, 805 - Apto 92
Jardim Paulista, São Paulo - 01408-001', NULL, NULL, NULL, NULL, 1, 1)
INSERT [RH].[Funcionario] ([Id], [Nome], [DataNascimento], [Telefone], [Celular], [Email], [Endereco], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao], [SexoID], [Ativo]) VALUES (1018, N'GABRIEL ALVES SORIANO', N'28/12/1998', N'(11) 97171-6098', N'', N'gabriel@tecnun.com.br', N'Rua Maria das Dores Lemos, 131 
Baronesa, Osasco – 06263-020', NULL, NULL, NULL, NULL, 1, 0)
INSERT [RH].[Funcionario] ([Id], [Nome], [DataNascimento], [Telefone], [Celular], [Email], [Endereco], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao], [SexoID], [Ativo]) VALUES (1019, N'HENRIQUE KEN ITI HIROTA', N'10/09/1993', N'(11) 94141-3959', N'', N'hirota@tecnun.com.br', N'Rua Eduardo Ferreira Franca, 898
Água Funda, São Paulo - 04157-000', NULL, NULL, NULL, NULL, 1, 1)
INSERT [RH].[Funcionario] ([Id], [Nome], [DataNascimento], [Telefone], [Celular], [Email], [Endereco], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao], [SexoID], [Ativo]) VALUES (1020, N'JULIUS KLAES MATHEUS', N'13/09/1990', N'(11) 98137-1306', N'', N'julius@tecnun.com.br', N'Av. Piassanguaba, 1627
Planalto Paulista, São Paulo - 04060-002', NULL, NULL, NULL, NULL, 1, 1)
INSERT [RH].[Funcionario] ([Id], [Nome], [DataNascimento], [Telefone], [Celular], [Email], [Endereco], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao], [SexoID], [Ativo]) VALUES (1021, N'PAULO CESAR DA SILVA', N'07/07/1972', N'(11) 97471-5339', N'', N'paulo.gallo@tecnun.com.br', N'Rua Professora Isabel Ferreira da Silva, 227 Jardim Rubi, Mogi das Cruzes – Cep 08725-649', NULL, NULL, NULL, NULL, 1, 0)
INSERT [RH].[Funcionario] ([Id], [Nome], [DataNascimento], [Telefone], [Celular], [Email], [Endereco], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao], [SexoID], [Ativo]) VALUES (1022, N'PAULO HENRIQUE GALLO', N'28/09/1992', N'(11) 96526-6906', N'', N'paulo@tecnun.com.br', N'Rua Diogo de Sousa, 380 - Casa 3
Cidade Líder, São Paulo - 08285-330', NULL, NULL, NULL, NULL, 1, 0)
INSERT [RH].[Funcionario] ([Id], [Nome], [DataNascimento], [Telefone], [Celular], [Email], [Endereco], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao], [SexoID], [Ativo]) VALUES (1023, N'RENAN SOUZA RODRIGUES', N'20/09/1992', N'(11) 97988-9910', N'', N'renan@tecnun.com.br', N'Rua Ercole Roberti, 25 - Casa 2
Mandaqui, São Paulo, SP - 02434-020', NULL, NULL, NULL, NULL, 1, 0)
INSERT [RH].[Funcionario] ([Id], [Nome], [DataNascimento], [Telefone], [Celular], [Email], [Endereco], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao], [SexoID], [Ativo]) VALUES (1024, N'THIAGO ALEIXO VIDAL BATISTA', NULL, NULL, N'', N'thiago@tecnun.com.br', NULL, NULL, NULL, NULL, NULL, 1, 0)
INSERT [RH].[Funcionario] ([Id], [Nome], [DataNascimento], [Telefone], [Celular], [Email], [Endereco], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao], [SexoID], [Ativo]) VALUES (1025, N'PHILLIP DA SILVA MOREIRA', N'11/08/1986', N'(11) 96620-6895', N'', N'philipp@tecnun.com.br', N'Rua Campos Maiorca, 13 - Casa B
Jardim Aricanduva, São Paulo, SP - 03456-030', NULL, NULL, NULL, NULL, 1, 1)
INSERT [RH].[Funcionario] ([Id], [Nome], [DataNascimento], [Telefone], [Celular], [Email], [Endereco], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao], [SexoID], [Ativo]) VALUES (1026, N'LUCAS MAROPO RODRIGUES', N'13/08/1998', N'(11) 96603-5269', N'', N'lucas@tecnun.com.br', N'Rua Santa Luzia, 165
Santa Terezinha, São Paulo, SP - 06315-030', NULL, NULL, NULL, NULL, 1, 1)
INSERT [RH].[Funcionario] ([Id], [Nome], [DataNascimento], [Telefone], [Celular], [Email], [Endereco], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao], [SexoID], [Ativo]) VALUES (1027, N'DANIEL XAVIER DA SILVA', N'18/02/1983', N'(11) 97115-8578', N'', N'daniel@tecnun.com.br', N'Rua dos Alpes, 2
Suísso, São Bernardo do Campo, SP - 09663-070', NULL, NULL, NULL, NULL, 1, 0)
INSERT [RH].[Funcionario] ([Id], [Nome], [DataNascimento], [Telefone], [Celular], [Email], [Endereco], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao], [SexoID], [Ativo]) VALUES (1028, N'PEDRO HENRIQUE CAVERNAZ GUIMARÃES BASTOS EHLER', N'12/06/1992', N'(11) 96901-5536', N'', N'pedro@tecnun.com.br', N'Rua Cisplatina, 1071 - Fundos
Vila Pires, Santo André, SP - 09121-430', NULL, NULL, NULL, NULL, 1, 0)
INSERT [RH].[Funcionario] ([Id], [Nome], [DataNascimento], [Telefone], [Celular], [Email], [Endereco], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao], [SexoID], [Ativo]) VALUES (1029, N'JONATHAN BARBOSA DA COSTA SILVA', N'19/05/1994', N'(11) 98453-7868', N'+55 11 98453-7868', N'jbarbosa@tecnun.com.br', N'Rua Jason Xavier de Barros, 255
Jardim das Oliveiras - São paulo, SP - 08122-080', N'jefferson@tecnun.com.br', CAST(N'2018-05-25T10:20:15.393' AS DateTime), NULL, NULL, 1, 1)
INSERT [RH].[Funcionario] ([Id], [Nome], [DataNascimento], [Telefone], [Celular], [Email], [Endereco], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao], [SexoID], [Ativo]) VALUES (1030, N'ERIK MASSAO TAKIGAMI', N'09/09/1987', N'(11) 98421-7833', N'+55 11 98421-7833', N'erik@tecnun.com.br', N'Rua Sebastiano Mazzoni, 39, apto 53, bloco 2
Vila Moraes - São Paulo, SP - 04171-000', NULL, CAST(N'2018-07-09T22:34:06.057' AS DateTime), NULL, NULL, 1, 1)
INSERT [RH].[Funcionario] ([Id], [Nome], [DataNascimento], [Telefone], [Celular], [Email], [Endereco], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao], [SexoID], [Ativo]) VALUES (1031, N'VINÍCIUS DE MORAIS MUSSATO', NULL, NULL, N'', N'vinicius@tecnun.com.br', NULL, NULL, CAST(N'2018-07-09T22:34:06.057' AS DateTime), NULL, NULL, 1, 0)
INSERT [RH].[Funcionario] ([Id], [Nome], [DataNascimento], [Telefone], [Celular], [Email], [Endereco], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao], [SexoID], [Ativo]) VALUES (1033, N'CRISTINA', NULL, NULL, N'', N'cristina@tecnun.com.br', NULL, NULL, CAST(N'2018-07-09T22:34:06.057' AS DateTime), NULL, NULL, 2, 0)
INSERT [RH].[Funcionario] ([Id], [Nome], [DataNascimento], [Telefone], [Celular], [Email], [Endereco], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao], [SexoID], [Ativo]) VALUES (1034, N'RENATO MENDES ALEGRETTI', NULL, NULL, N'', N'renato@tecnun.com.br', NULL, NULL, CAST(N'2018-07-09T22:34:06.057' AS DateTime), NULL, NULL, 1, 0)
INSERT [RH].[Funcionario] ([Id], [Nome], [DataNascimento], [Telefone], [Celular], [Email], [Endereco], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao], [SexoID], [Ativo]) VALUES (1036, N'GILBERTO PEQUENO VIEGAS LOBO', NULL, NULL, N'', N'gilberto@tecnun.com.br', NULL, NULL, CAST(N'2018-07-09T22:34:06.057' AS DateTime), NULL, NULL, 1, 0)
INSERT [RH].[Funcionario] ([Id], [Nome], [DataNascimento], [Telefone], [Celular], [Email], [Endereco], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao], [SexoID], [Ativo]) VALUES (1037, N'ANDRÉ RASCIO DINI', N'23/10/1993', N'(13) 99177-8949', N'', N'andre@tecnun.com.br', N'Av. Conselheiro Nébias, 751 - Apto. 81
Boqueirão, Santos – 11045-003', NULL, CAST(N'2018-07-09T22:34:06.057' AS DateTime), NULL, NULL, 1, 0)
INSERT [RH].[Funcionario] ([Id], [Nome], [DataNascimento], [Telefone], [Celular], [Email], [Endereco], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao], [SexoID], [Ativo]) VALUES (1038, N'RODRIGO HELOANI DE BRITO', N'30/04/1987', N'(11) 99864-2642', N'', N'rodrigo@tecnun.com.br', N'Rua Tenente Azevedo, 104 - 223A
Aclimação, São Paulo - 01528-020', NULL, CAST(N'2018-07-09T22:34:06.057' AS DateTime), NULL, NULL, 1, 0)
INSERT [RH].[Funcionario] ([Id], [Nome], [DataNascimento], [Telefone], [Celular], [Email], [Endereco], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao], [SexoID], [Ativo]) VALUES (1039, N'ANACLETO DE LIMA CORREIA MACIEL', NULL, NULL, N'', N'anacleto@tecnun.com.br', NULL, NULL, CAST(N'2018-07-09T22:34:06.057' AS DateTime), NULL, NULL, 1, 0)
INSERT [RH].[Funcionario] ([Id], [Nome], [DataNascimento], [Telefone], [Celular], [Email], [Endereco], [UsuarioInclusao], [MomentoInclusao], [UsuarioEdicao], [MomentoEdicao], [SexoID], [Ativo]) VALUES (1042, N'JOSE EDUARDO BATISTA', NULL, NULL, N'+55 11 98235-1025', N'jeduardo@tecnun.com.br', NULL, NULL, CAST(N'2018-07-09T22:34:06.057' AS DateTime), NULL, NULL, 1, 1)
SET IDENTITY_INSERT [RH].[Funcionario] OFF
SET IDENTITY_INSERT [RH].[Modalidade] ON 

INSERT [RH].[Modalidade] ([Id], [NomeModalidade]) VALUES (1, N'CLT')
INSERT [RH].[Modalidade] ([Id], [NomeModalidade]) VALUES (2, N'CLT / PJ')
INSERT [RH].[Modalidade] ([Id], [NomeModalidade]) VALUES (3, N'PJ')
INSERT [RH].[Modalidade] ([Id], [NomeModalidade]) VALUES (4, N'OUTROS')
SET IDENTITY_INSERT [RH].[Modalidade] OFF
SET IDENTITY_INSERT [RH].[PerfilCargo] ON 

INSERT [RH].[PerfilCargo] ([Id], [NomePerfil]) VALUES (1, N'JUNIOR')
INSERT [RH].[PerfilCargo] ([Id], [NomePerfil]) VALUES (2, N'PLENO')
INSERT [RH].[PerfilCargo] ([Id], [NomePerfil]) VALUES (3, N'SENIOR')
INSERT [RH].[PerfilCargo] ([Id], [NomePerfil]) VALUES (4, N'VBA A0')
INSERT [RH].[PerfilCargo] ([Id], [NomePerfil]) VALUES (5, N'VBA A1')
INSERT [RH].[PerfilCargo] ([Id], [NomePerfil]) VALUES (6, N'VBA A2')
INSERT [RH].[PerfilCargo] ([Id], [NomePerfil]) VALUES (7, N'VBA B1')
INSERT [RH].[PerfilCargo] ([Id], [NomePerfil]) VALUES (8, N'VBA B2')
INSERT [RH].[PerfilCargo] ([Id], [NomePerfil]) VALUES (9, N'VBA C1')
SET IDENTITY_INSERT [RH].[PerfilCargo] OFF
ALTER TABLE [RH].[Contrato] ADD  DEFAULT (getdate()) FOR [MomentoInclusao]
GO
ALTER TABLE [RH].[Funcionario] ADD  CONSTRAINT [DF__Funcionar__Momen__65370702]  DEFAULT (getdate()) FOR [MomentoInclusao]
GO
ALTER TABLE [RH].[Funcionario] ADD  CONSTRAINT [DF__Funcionar__SexoI__662B2B3B]  DEFAULT ((0)) FOR [SexoID]
GO
ALTER TABLE [RH].[Funcionario] ADD  CONSTRAINT [DF__Funcionar__Ativo__6442E2C9]  DEFAULT ((0)) FOR [Ativo]
GO
ALTER TABLE [Regiao].[Cidade]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Cidade_dbo.Estado_Estado_EstadoID] FOREIGN KEY([Estado_EstadoID])
REFERENCES [Regiao].[Estado] ([EstadoID])
GO
ALTER TABLE [Regiao].[Cidade] CHECK CONSTRAINT [FK_dbo.Cidade_dbo.Estado_Estado_EstadoID]
GO
ALTER TABLE [RH].[Contrato]  WITH CHECK ADD  CONSTRAINT [fk_cargo] FOREIGN KEY([IdCargo])
REFERENCES [RH].[Cargo] ([Id])
GO
ALTER TABLE [RH].[Contrato] CHECK CONSTRAINT [fk_cargo]
GO
ALTER TABLE [RH].[Contrato]  WITH CHECK ADD  CONSTRAINT [fk_depto] FOREIGN KEY([IdDepto])
REFERENCES [RH].[Departamento] ([Id])
GO
ALTER TABLE [RH].[Contrato] CHECK CONSTRAINT [fk_depto]
GO
ALTER TABLE [RH].[Contrato]  WITH CHECK ADD  CONSTRAINT [fk_funcionario] FOREIGN KEY([IdFuncionario])
REFERENCES [RH].[Funcionario] ([Id])
GO
ALTER TABLE [RH].[Contrato] CHECK CONSTRAINT [fk_funcionario]
GO
ALTER TABLE [RH].[Contrato]  WITH CHECK ADD  CONSTRAINT [fk_modalidade] FOREIGN KEY([IdModalidade])
REFERENCES [RH].[Modalidade] ([Id])
GO
ALTER TABLE [RH].[Contrato] CHECK CONSTRAINT [fk_modalidade]
GO
ALTER TABLE [RH].[Contrato]  WITH CHECK ADD  CONSTRAINT [fk_perfilcargo] FOREIGN KEY([IdPerfil])
REFERENCES [RH].[PerfilCargo] ([Id])
GO
ALTER TABLE [RH].[Contrato] CHECK CONSTRAINT [fk_perfilcargo]
GO
ALTER TABLE [RH].[Documentos]  WITH CHECK ADD  CONSTRAINT [fk_doc_funcionario] FOREIGN KEY([IdFuncionario])
REFERENCES [RH].[Funcionario] ([Id])
GO
ALTER TABLE [RH].[Documentos] CHECK CONSTRAINT [fk_doc_funcionario]
GO
