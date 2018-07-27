using System.Web.Mvc;

namespace TPAMVC.Controllers
{
    public class ContatoController : Controller
    {
        //
        // GET: /Contato/

        public ActionResult Index()
        {
            return View("MeuContato");
        }

    }
}
