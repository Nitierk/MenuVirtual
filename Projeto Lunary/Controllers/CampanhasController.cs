using Projeto_Lunary.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Projeto_Lunary.Controllers
{
    public class CampanhasController : Controller
    {
        // GET: Campanhas

        LunaryEntities bd = new LunaryEntities();
        public ActionResult Index()
        {
            return View(bd.Campanhas.ToList());
        }
        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(string Descricao, float CAMPRECO, HttpPostedFileBase Foto)
        {
            Campanhas novacampanha = new Campanhas();
            novacampanha.CAMDESCRICAO = Descricao;
            novacampanha.CAMPRECO = CAMPRECO;
            using (var memoryStream = new MemoryStream())
            {
                Foto.InputStream.CopyTo(memoryStream);
                novacampanha.CAMFOTO = memoryStream.ToArray();
            }
            bd.Campanhas.Add(novacampanha);
            bd.SaveChanges();
            return RedirectToAction("Index");
        }



    }
}