using Projeto_Lunary.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.IO;
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
            return View(bd.Restaurante.ToList());
        }
    
        [HttpGet]
        public ActionResult Editar(int? id)
        {
            Restaurante Localizarrestaurante = bd.Restaurante.ToList().Where(x => x.RESTAUID == id).First();
            return View(Localizarrestaurante);
        }

        [HttpPost]
        public ActionResult Editar(int? id, string nome, string preco,string descricao,decimal precopromocao,string categoria,byte imagem)
        {
            Restaurante atualizarrestaurante = bd.Restaurante.ToList().Where(x => x.RESTAUID == id).First();
            atualizarrestaurante.RESTANOME = nome;
            atualizarrestaurante.RESTAPRECO = Convert.ToInt32(preco);
            atualizarrestaurante.RESTADESCRICAO = descricao;
            atualizarrestaurante.RESTAPREPROMOCAO = precopromocao;
            atualizarrestaurante.RESTACATEGORIA = categoria;
            


            bd.Entry(atualizarrestaurante).State = EntityState.Modified;
            bd.SaveChanges();
            return RedirectToAction("index");
        }

        public ActionResult Excluir(int? id)
        {
            Restaurante excluirprato = bd.Restaurante.ToList().Where(x => x.RESTAUID == id).First();
            return View(excluirprato);
        }


        [HttpPost]
        public ActionResult ExcluirConfirma(int? id)
        {
            Restaurante excluirprato = bd.Restaurante.ToList().Where(x => x.RESTAUID == id).First();
            bd.Restaurante.Remove(excluirprato);
            try
            {
                bd.SaveChanges();
            }
            catch (Exception)
            {
                return RedirectToAction("index");
            }

            return RedirectToAction("index");
        }


        public ActionResult Create()
        {
            var model = new Restauranteimanges();
            return View(model);
        }

        [HttpPost]
        public ActionResult Create (Restauranteimanges model, string nome, decimal preco, string descricao, decimal precopromocao, string categoria, byte imagem)
        {

            if (ModelState.IsValid)
            {
                Restaurante novoRestaurante = new Restaurante();
                novoRestaurante.RESTANOME = nome;
                novoRestaurante.RESTAPRECO = preco;
                novoRestaurante.RESTADESCRICAO = descricao;
                novoRestaurante.RESTAPREPROMOCAO = precopromocao;
                novoRestaurante.RESTACATEGORIA = categoria;
                using (var binaryReader = new BinaryReader(model.Imagens.InputStream))
                novoRestaurante.imagem = binaryReader.ReadBytes(model.Imagens.ContentLength);

                bd.Restaurante.Add(novoRestaurante);
                bd.SaveChanges();
                return RedirectToAction("Index");
            }

        }

    }
}