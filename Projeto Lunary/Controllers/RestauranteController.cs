using Projeto_Lunary.Models;
using QRCoder;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Projeto_Lunary.Controllers
{
    [AllowAnonymous]
    public class RestauranteController : Controller
    {
        // GET: Restaurante
        LunaryEntities bd = new LunaryEntities();

        
        [HttpGet]
     
        public ActionResult Index()
        {
            ViewBag.ListCategorias = bd.Categorias.ToList();
            return View(bd.Restaurante.ToList());

        }

        [HttpGet]
        public ActionResult Detalhes(int? id)
        {

            Restaurante restaurante = bd.Restaurante.Find(id);    
            return PartialView(restaurante);
        }


    }
}