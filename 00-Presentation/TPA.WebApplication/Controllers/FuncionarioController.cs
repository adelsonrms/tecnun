using System;
using System.Linq;
using AutoMapper;
using System.Net;
using System.Web.Mvc;
using TPA.Domain.DomainModel;
using TPA.Services.Seguranca;
using TPA.ViewModel;
using TPA.Infra.Data.Repository;
using TPA.Services;

//using TPA.Presentation.Controllers.ManageController;

namespace TPA.Presentation.Controllers
{
    [TPAAuthorize]
    [TPADescricaoAcaoController("Funcionarios", "Gerencia informações sobre os funcionarios")]
    public class FuncionarioController : TPAController
    {
        // GET: Funcionario
        public ActionResult Index()
        {
            return View();
        }
        /// <summary>
        /// index da página de gerenciamento de logins
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
        [TPADescricaoAcaoController("Página de Gerenciamento de Logins", "Acessar página de gerenciamento de logins")]
        public ActionResult FichaCadastral(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest, "O Id deve ser informado");
            }
            Funcionario funcionario = db.Funcionarios.Find(id);

            funcionario.Contrato = db.Contratos.SingleOrDefault(u => u.IdFuncionario == funcionario.Id);

            funcionario.Contrato.Cargo = db.Cargos.SingleOrDefault(u => u.Id == funcionario.Contrato.IdCargo);

            DataContrato dt = new DataContrato(funcionario.Contrato);

            TPA.Services.TimeSpan2 TempoDeCasa = new TimeSpan2(dt.DataInicio, dt.DataFim);

            funcionario.Contrato.TempoDeCasa = TempoDeCasa.ToString();
            if (funcionario.DataNascimento!=null)
            {
                funcionario.Idade = new TimeSpan2(DateTime.Parse(funcionario.DataNascimento), DateTime.Today).TempoDecorrido("y");
            }

            if (funcionario == null)
            {
                return HttpNotFound();
            }
            return View(Mapper.Map<Funcionario, FichaCadastralViewModel>(funcionario));
        }

    }
}