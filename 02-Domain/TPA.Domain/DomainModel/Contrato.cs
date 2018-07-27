using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace TPA.Domain.DomainModel
{
    public class Contrato
    {
        [Key]
        public int Id { get; set; }
        public virtual int IdFuncionario { get; set; }
        public virtual string DataAdmissao { get; set; }
        public virtual string DataDemissao { get; set; }
        public virtual string RG { get; set; }
        public virtual string PIS { get; set; }
        public virtual string CarteiraHabilitacao { get; set; }
        public virtual string CarteiraDeTrabalho { get; set; }
        public virtual int IdModalidade { get; set; }
        public virtual int IdCargo { get; set; }
        public virtual int IdDepto { get; set; }
        public virtual float Salario { get; set; }
        public virtual int IdPerfil { get; set; }
        public Cargo Cargo { get; set; }
        public string TempoDeCasa { get; set; }

        public string StatusContrato
        {
            get { return DataDemissao != null ? "Demitido" : "Ativo"; }
        }
    }

    public class DataContrato
    {

        public DateTime DataInicio { get; set; }
        public DateTime DataFim { get; set; }

        public DataContrato(Contrato contrato)
        {
            if (contrato.DataAdmissao != null){DataInicio = DateTime.Parse(contrato.DataAdmissao);}
            DataFim = DateTime.Today;
            if (contrato.DataDemissao != null){DataFim = DateTime.Parse(contrato.DataDemissao);}
        }
    }
}
