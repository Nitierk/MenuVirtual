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
            /*ViewBag.Padrao = bd.Restaurante.Where(x => (x.Oferta == false && x.RESTAPREPROMOCAO == 0) && x.Disponibilidade == true).ToList();*/
            ViewBag.Indisponivel = bd.Restaurante.Where(x => x.Disponibilidade == false).ToList();
            var Petisco = bd.Restaurante.Where(x => x.RESTACATEGORIA == "Petiscos" && x.Oferta == false && x.RESTAPREPROMOCAO == 0 && x.Disponibilidade == true).Take(15).ToList();
            var Bebidas = bd.Restaurante.Where(x => x.RESTACATEGORIA == "Bebidas" && x.Oferta == false && x.RESTAPREPROMOCAO == 0 && x.Disponibilidade == true).Take(15).ToList();
            var Refeicoes = bd.Restaurante.Where(x => x.RESTACATEGORIA == "Refeições" && x.Oferta == false && x.RESTAPREPROMOCAO == 0 && x.Disponibilidade == true).Take(15).ToList();
            var Porcoes = bd.Restaurante.Where(x => x.RESTACATEGORIA == "Porções" && x.Oferta == false && x.RESTAPREPROMOCAO == 0 && x.Disponibilidade == true).Take(15).ToList();

            /*IPagedList<Projeto_Lunary.Models.Restaurante> pratos = (IPagedList<Restaurante>)Bebidas.Concat(Petisco).Concat(Refeicoes).Concat(Porcoes).ToPagedList(i ?? 1, 15);*/
            ViewBag.Padrao = Bebidas.Concat(Petisco).Concat(Refeicoes).Concat(Porcoes).ToList();
            /*PagedListExtensions pratos = Bebidas.Concat(Petisco).Concat(Refeicoes).Concat(Porcoes);*/
            return View();
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

        [HttpPost]
        public JsonResult ListaPratos(string categoria, int qtd)
        {
            List<Restaurante> Refeições = bd.Restaurante.Where(x => x.RESTACATEGORIA == "Refeições" && x.Oferta == false && x.RESTAPREPROMOCAO == 0 && x.Disponibilidade == true).ToList();
            List<Restaurante> Bebidas = bd.Restaurante.Where(x => x.RESTACATEGORIA == "Bebidas" && x.Oferta == false && x.RESTAPREPROMOCAO == 0 && x.Disponibilidade == true).ToList();
            List<Restaurante> Porções = bd.Restaurante.Where(x => x.RESTACATEGORIA == "Porções" && x.Oferta == false && x.RESTAPREPROMOCAO == 0 && x.Disponibilidade == true).ToList();
            List<Restaurante> Petiscos = bd.Restaurante.Where(x => x.RESTACATEGORIA == "Petiscos" && x.Oferta == false && x.RESTAPREPROMOCAO == 0 && x.Disponibilidade == true).ToList();




            //Dados
            switch (categoria)
            {
                case "Bebidas":
                    return Json(Bebidas.Skip(qtd).Take(5).ToList());
                case "Refeicoes":
                    return Json(Refeições.Skip(qtd).Take(2).ToList());
                case "Porcoes":
                    return Json(Porções.Skip(qtd).Take(5).ToList());
                case "Petiscos":
                    return Json(Petiscos.Skip(qtd).Take(5).ToList());

                case "Quantidade de Pratos":
                    int[] qtdPratos = { Bebidas.Count, Refeições.Count, Porções.Count, Petiscos.Count };
                    return Json(qtdPratos);

                default:
                    string[] pratos = { "Deu erro" };
                    return Json(pratos);
            }
        }

    }
}