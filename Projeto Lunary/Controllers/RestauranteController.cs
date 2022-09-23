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
    public class RestauranteController : Controller
    {
        // GET: Restaurante
        LunaryEntities bd = new LunaryEntities();
        public ActionResult Index()
        {
            ViewBag.ListCategorias = bd.Categorias.ToList();
            ViewBag.Rank = bd.Ranking.ToList();
            ViewBag.Campanha = bd.Campanhas.ToList();
            return View(bd.Restaurante.ToList());
        }

    }
}