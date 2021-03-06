﻿using System.Configuration;

namespace TPA.Infra.Services
{
    /// <summary>
    /// classe de consulta a configurações gerais, wrapper para config
    /// </summary>
    public class ConfigServices
    {

        #region métodos estáticos públicos

        /// <summary>
        /// traz a connection string do arquivo de config
        /// </summary>
        /// <returns></returns>
        public static string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings[GetConnectionName()].ConnectionString;
        }

        /// <summary>
        /// traz o nome padrão de connection string
        /// </summary>
        /// <returns></returns>
        public static string GetConnectionName()
        {
            return "TPAContextConnStr";
        }

        #endregion


    }
}
