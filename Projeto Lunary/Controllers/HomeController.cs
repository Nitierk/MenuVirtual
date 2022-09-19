using Projeto_Lunary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace Projeto_Lunary.Controllers
{
    [Authorize]
    public class HomeController : Controller
    {
        BDLunary bd = new BDLunary();

        public ActionResult Index()
        {
            return View();
        }
        
        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        

        [HttpPost]
        public ActionResult VerificarLogin(string login, string senha)
        {
            foreach (var item in bd.Estabelecimento)
            {
                if ((item.ESTABLOGIN == login) && (item.ESTABSENHA == senha))
                {
                    Session["MyCurso"] = "MyCurso";
                    return RedirectToAction("Index");
                }
            }

            return RedirectToAction("Login");

        }
    }
}