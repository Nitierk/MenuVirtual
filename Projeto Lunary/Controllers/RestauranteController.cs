using Projeto_Lunary.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Projeto_Lunary.Controllers
{
    public class RestauranteController : Controller
    {
        // GET: Restaurante
        BDLunary bd = new BDLunary();
        public ActionResult Index()
        {
            ViewBag.ListCategorias = bd.Categorias.ToList();
            return View(bd.Restaurante.ToList());
        }
        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(string nome,decimal preco, string descricao,string precopromocao, string categoria,string imagem)
        {
            Restaurante novoRestaurante = new Restaurante();
            novoRestaurante.RESTANOME = nome;
            novoRestaurante.RESTAPRECO = (double)Convert.ToDecimal(preco);
            novoRestaurante.RESTADESCRICAO = descricao;
            novoRestaurante.RESTAPREPROMOCAO = precopromocao;
            novoRestaurante.RESTACATEGORIA = categoria;
            

            bd.Restaurante.Add(novoRestaurante);

            return RedirectToAction("Index");
        }

        [HttpGet]
        public ActionResult Edit(int? id)
        {
            Restaurante Localizarrestaurante = bd.Restaurante.ToList().Where(x => x.RESTAUID == id).First();
            return View(Localizarrestaurante);
        }

        [HttpPost]
        public ActionResult Edit(int? id, string nome, string preco,string descricao,string precopromocao,string categoria)
        {
            Restaurante atualizarrestaurante = bd.Restaurante.ToList().Where(x => x.RESTAUID == id).First();
            atualizarrestaurante.RESTANOME = nome;
            atualizarrestaurante.RESTAPRECO = Convert.ToInt32(preco);
            atualizarrestaurante.RESTADESCRICAO = descricao;
            atualizarrestaurante.RESTAPREPROMOCAO = precopromocao;


            bd.Entry(atualizarrestaurante).State = EntityState.Modified;
            bd.SaveChanges();
            return RedirectToAction("index");
        }

    }
}