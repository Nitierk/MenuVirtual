using AngleSharp.Io;
using PagedList;
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
        public ActionResult Menu(int? i)
        {
            ViewBag.ListCategorias = bd.Categorias.ToList();
            ViewBag.Rank = bd.Restaurante.ToList().OrderByDescending(x => ((uint)x.Curtidas)).Take(5).ToList();
            ViewBag.Campanha = bd.Campanhas.ToList();
            ViewBag.Ofertas = bd.Restaurante.Where(x => (x.Oferta == true || x.RESTAPREPROMOCAO > 0) && x.Disponibilidade == true ).ToList();
            ViewBag.Padrao = bd.Restaurante.Where(x => (x.Oferta == false && x.RESTAPREPROMOCAO == 0) && x.Disponibilidade == true).ToList();
            ViewBag.Indisponivel = bd.Restaurante.Where(x => x.Disponibilidade == false).ToList();
            var Petisco = bd.Restaurante.Where(x => x.RESTACATEGORIA == "Petiscos").ToList().ToPagedList(i ?? 1, 15);
            var Bebidas = bd.Restaurante.Where(x => x.RESTACATEGORIA == "Bebidas").ToList().ToPagedList(i ?? 1, 15);
            var Refeicoes = bd.Restaurante.Where(x => x.RESTACATEGORIA == "Refeições").ToList().ToPagedList(i ?? 1, 15);
            var Porcoes = bd.Restaurante.Where(x => x.RESTACATEGORIA == "Porções").ToList().ToPagedList(i ?? 1, 15);

            IPagedList<Projeto_Lunary.Models.Restaurante> pratos = (IPagedList<Restaurante>)Bebidas.Concat(Petisco).Concat(Refeicoes).Concat(Porcoes).ToPagedList(i ?? 1, 15);
            /*PagedListExtensions pratos = Bebidas.Concat(Petisco).Concat(Refeicoes).Concat(Porcoes);*/
            return View(pratos);
        }

        [HttpGet]
        public ActionResult Detalhes(int? id)
        {
            Restaurante restaurante = bd.Restaurante.Find(id);    
            return PartialView(restaurante);
        }

        [HttpPost]
        public ActionResult ContagemLikes(int? id, bool status)
        {
            Restaurante atulizarLikes = bd.Restaurante.ToList().Where(x => x.RESTAUID == id).First();
            if (status)
            {
                atulizarLikes.Curtidas += 1;
            }
            else
            {
                if (atulizarLikes.Curtidas > 0)
                {
                    atulizarLikes.Curtidas -= 1;
                }   
            }

            bd.Entry(atulizarLikes).State = EntityState.Modified;
            bd.SaveChanges();
            return RedirectToAction("menu");
        }


    }
}