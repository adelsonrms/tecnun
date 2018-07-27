namespace TPA.Infra.Services
{

    /// <summary>
    /// classe para agrupar métodos de diagnostico e debug 
    /// </summary>
    public class DevServices
    {

        #region métodos estáticos públicos

        /// <summary>
        /// verifica se o ambiente que está rodando é o de produção ou de desenvolvimento
        /// </summary>
        /// <returns></returns>
        public static bool IsDevEnv()
        {
            //mssql04-farm68.kinghost.net;
            return !ConfigServices.GetConnectionString().Contains("mssql04-farm68.kinghost.net");
        }

        #endregion


    }
}
