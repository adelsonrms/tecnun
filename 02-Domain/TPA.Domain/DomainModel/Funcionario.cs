﻿using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace TPA.Domain.DomainModel
{

    /// <summary>
    /// dados do funcionário
    /// dados opcionais para a classe usuário
    /// </summary>
    public class Funcionario : TPAEntity
    {

        #region propriedades públicas

        /// <summary>
        /// id do usuário
        /// A classe Funcionário contém dados opcionais do usuário
        /// O ID é PK e FK ao mesmo tempo para estabelecer uma relação 1 x 1
        /// </summary>
        [Key]
        [ForeignKey("Usuario")]
        public override int Id { get; set; }

        /// <summary>
        /// usuário raiz do funcionário
        /// usuário do qual esses dados são complemento
        /// </summary>
        public virtual Usuario Usuario { get; set; }

        public virtual Contrato Contrato { get; set; }

        /// <summary>
        /// nome do funcionário
        /// </summary>
        public virtual string Nome { get; set; }


        /// <summary>
        /// matrícula do funcionário
        /// </summary>
        public virtual string Matricula { get; set; }

        /// <summary>
        /// cpf do funcionário
        /// todo: requer validação
        /// </summary>
        public virtual string CPF { get; set; }

        /// <summary>
        /// pis do funcionário
        /// todo: requer validação
        /// </summary>
        public virtual string PIS { get; set; }

        /// <summary>
        /// telefone do funcionário
        /// </summary>
        public virtual string Telefone { get; set; }

        /// <summary>
        /// celular do funcionário
        /// usado para envio de alertas por sms
        /// por exemplo alerta de atraso no lançamento das atividades
        /// </summary>
        [Phone]
        [DataType(DataType.PhoneNumber)]
        [RegularExpression(@"^(\([0-9]{2}\))\s([0-9]{4})-([0-9]{4,5})$", ErrorMessage = "Telefone Inválido")]
        public virtual string Celular { get; set; }


        /// <summary>
        /// se o funcionário é alocado no ambiente do cliente, esse deve ser o e-mail no domínio do cliente
        /// </summary>
        [EmailAddress]
        [Display(Name = "E-mail no ambiente do cliente")]
        public virtual string EmailProfissional { get; set; }

        /// <summary>
        /// e-mail pessoal do funcionário
        /// </summary>
        public virtual string EmailPessoal { get; set; }

        /// <summary>
        /// endereço do funcionário
        /// </summary>
        public virtual string Endereco { get; set; }
        public virtual string CEP { get; set; }
        public virtual string Bairro { get; set; }
        public virtual string Cidade { get; set; }
        public virtual string Estado { get; set; }

        public virtual string DataNascimento { get; set; }
        public virtual int SexoID { get; set; }
        public string Idade { get; set; }

        #endregion


    }
}