use tecnun
go
select * from tpa.Usuario
select * from TPA.Funcionario

select * from Usuarios_Office365$ a left join tmp_usuario b on a.[Email de trabalho]




select * from tmp_usuario
alter table tmp_usuario
add id int 
UPDATE tmp_usuario SET id = 1031 where login = 'vinicius@tecnun.com.br'
UPDATE tmp_usuario SET id = 1032 where login = 'projetos@tecnun.com.br'
UPDATE tmp_usuario SET id = 1033 where login = 'cristina@tecnun.com.br'
UPDATE tmp_usuario SET id = 1034 where login = 'renato@tecnun.com.br'
UPDATE tmp_usuario SET id = 1035 where login = 'sistema@tecnun.com.br'
UPDATE tmp_usuario SET id = 1036 where login = 'gilberto@tecnun.com.br'
UPDATE tmp_usuario SET id = 1037 where login = 'andre@tecnun.com.br'
UPDATE tmp_usuario SET id = 1038 where login = 'rodrigo@tecnun.com.br'
UPDATE tmp_usuario SET id = 1039 where login = 'anacleto@tecnun.com.br'
UPDATE tmp_usuario SET id = 1040 where login = 'mariana@tecnun.com.br'
UPDATE tmp_usuario SET id = 1041 where login = 'relacionamento@tecnun.com.br'
UPDATE tmp_usuario SET id = 1042 where login = 'jeduardo@tecnun.com.br'

insert into tpa.Usuario (id, Login, EnviarAlertaLancamento, Ativo)
select id, Login, EnviarAlertaLancamento, Ativo from tmp_usuario

insert into TPA.Funcionario (id, Matricula, EmailProfissional)
select a.id, a.id, a.Login from tpa.Usuario a left join TPA.Funcionario b on a.Login = b.EmailProfissional where b.EmailProfissional is null order by a.Id

update t set Nome = a.Nome, Celular = a.Celular
--select a.*
from TPA.Funcionario t
inner join Usuarios_Office365$ a on t.EmailProfissional = a.[Email de trabalho]

select * from TPA.Funcionario t

update TPA.Funcionario set nome = 'Sistema' where EmailProfissional = 'usuario@tecnun.com.br'

update TPA.Funcionario set Telefone = Celular

update t set Nome = a.[Nome Completo]
--Select a.[Nome Completo]
from TPA.Funcionario t
inner join funcionarios a on t.EmailProfissional = a.EmailProfissional

SELECT * FROM TPA.Funcionario
