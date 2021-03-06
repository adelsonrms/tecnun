﻿using System;

namespace TPA.ViewModel.Relatorios
{

    /// <summary>
    /// relatório consolidado de projeto/funcionário
    /// </summary>
    public class Relatorio_Consolidado_Projeto_Funcionario
    {

        #region propriedades públicas 

        /// <summary>
        /// funcionário
        /// </summary>
        public virtual string Funcionario { get; set; }

        /// <summary>
        /// cliente
        /// </summary>
        public virtual string Cliente { get; set; }

        /// <summary>
        /// área
        /// </summary>
        public virtual string Area { get; set; }

        /// <summary>
        /// projeto
        /// </summary>
        public virtual string Projeto { get; set; }

        /// <summary>
        /// horas
        /// </summary>
        public virtual string Horas { get; set; }

        /// <summary>
        /// horas como timespan
        /// </summary>
        public virtual TimeSpan HorasTimeSpan
        {
            get
            {
                double horas = Convert.ToInt32(this.Horas.Split(':')[0]);
                double minutos = Convert.ToInt32(this.Horas.Split(':')[1]) / 60;
                TimeSpan result = TimeSpan.FromHours(horas + minutos);
                return result;
            }
        }

        #endregion


    }
}
