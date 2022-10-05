using Projeto_Lunary.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList.Mvc;
using PagedList;


namespace Projeto_Lunary.Controllers
{
    [Authorize]
    public class AdminController : Controller
    {
        LunaryEntities bd = new LunaryEntities();
        // GET: Admin
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult ListPratos(int? i, string Pesquisa = "")
        {
            var lista = bd.Restaurante.ToList().ToPagedList(i ?? 1,15);
            return View(lista);

            var q = bd.Restaurante.AsQueryable();
            if (!string.IsNullOrEmpty(Pesquisa))
            {
                q = q.Where(c => c.RESTANOME.Contains(Pesquisa));
                q = q.OrderBy(c => c.RESTANOME);
            }
            return View(q.ToList());
        }

        public ActionResult Create()
        {
            ViewBag.listacategoria = bd.Categorias.ToList();
            return View();

        }

        [HttpPost]

        public ActionResult Create(int? id, string nome, float preco, string descricao, float precopromocao, string categoria, HttpPostedFileBase imagem, string oferta, string disponibilidade)
        {
            Restaurante novoRestaurante = new Restaurante();
            novoRestaurante.RESTANOME = nome;
            novoRestaurante.RESTAPRECO = preco;
            novoRestaurante.RESTADESCRICAO = descricao;
            novoRestaurante.RESTAPREPROMOCAO = precopromocao;
            novoRestaurante.RESTACATEGORIA = categoria;
            if (imagem != null)
            {
                using (var memoryStream = new MemoryStream())
                {
                    imagem.InputStream.CopyTo(memoryStream);
                    novoRestaurante.imagem = memoryStream.ToArray();
                }
            }

            if (oferta == "true")
            {
                novoRestaurante.Oferta = true;
            }
            else
            {
                novoRestaurante.Oferta = false;
            }


            if (disponibilidade == "true")
            {
                novoRestaurante.Disponibilidade = true;
            }
            else
            {
                novoRestaurante.Disponibilidade = false;
            }


            //novoRestaurante.Oferta = oferta;
            bd.Restaurante.Add(novoRestaurante);
            bd.SaveChanges();
            return RedirectToAction("Index", "Admin");
        }

        [HttpGet]

        public ActionResult Editar(int? id)
        {
            if (id != null)
            {
                try
                {
                    Restaurante Localizarrestaurante = bd.Restaurante.ToList().Where(x => x.RESTAUID == id).First();
                    ViewBag.listacategoria = bd.Categorias.ToList();
                    return View(Localizarrestaurante);
                }
                catch (Exception)
                {
                    return RedirectToAction("ListPratos");
                }
                
            }
            return RedirectToAction("ListPratos");
            
        }

        [HttpPost]
        [HandleError]

        public ActionResult Editar(int? id, string nome, float preco, string descricao, float precopromocao, string categoria, HttpPostedFileBase imagem, string oferta, string disponibilidade)
        {
            Restaurante atualizarrestaurante = bd.Restaurante.ToList().Where(x => x.RESTAUID == id).First();
            atualizarrestaurante.RESTANOME = nome;
            atualizarrestaurante.RESTAPRECO = preco;
            atualizarrestaurante.RESTADESCRICAO = descricao;
            atualizarrestaurante.RESTAPREPROMOCAO = precopromocao;
            atualizarrestaurante.RESTACATEGORIA = categoria;

            if (imagem != null)
            {
                using (var memoryStream = new MemoryStream())
                {
                    imagem.InputStream.CopyTo(memoryStream);
                    atualizarrestaurante.imagem = memoryStream.ToArray();
                }
            }

            if (oferta == "true")
            {
                atualizarrestaurante.Oferta = true;
            }
            else
            {
                atualizarrestaurante.Oferta = false;
            }


            if (disponibilidade == "true")
            {
                atualizarrestaurante.Disponibilidade = true;
            }
            else
            {
                atualizarrestaurante.Disponibilidade = false;
            }


            bd.Entry(atualizarrestaurante).State = EntityState.Modified;
            bd.SaveChanges();
            return RedirectToAction("ListPratos");
        }

        [HttpGet]
        public ActionResult Excluir(int? id)
        {
            if (id != null)
            {
                try
                {
                    Restaurante excluiroproduto = bd.Restaurante.ToList().Where(x => x.RESTAUID == id).First();
                    return View(excluiroproduto);
                }
                catch (Exception)
                {
                    return View("ListPratos");
                }
            }
            return View("ListPratos");
        }

        [HttpPost]
        public ActionResult ExcluirConfirmar(int? id)
        {
            if (id != null)
            {
                Restaurante excluiroproduto = bd.Restaurante.ToList().Where(x => x.RESTAUID == id).First();
                bd.Restaurante.Remove(excluiroproduto);

                try
                {
                    bd.SaveChanges();
                }
                catch (Exception)
                {
                    return RedirectToAction("ListPratos");
                }
            }
            
            return RedirectToAction("ListPratos");
        }

        public ActionResult QRCODindex()
        {
            return View();
        }

        public ActionResult ProdutosCurtidos()
        {
            ViewBag.Rank = bd.Restaurante.ToList().OrderByDescending(x => ((uint?)x.Curtidas)).ToList();
            return View();
        }
        
    }
}