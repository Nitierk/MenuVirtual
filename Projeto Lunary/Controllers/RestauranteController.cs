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
            return View(bd.Restaurante.ToList());
        }
        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(string nome,decimal preco, string descricao,string precopromocao, string categoria,byte imagem)
        {
            Restaurante novoRestaurante = new Restaurante();
            novoRestaurante.RESTANOME = nome;
            novoRestaurante.RESTAPRECO = (double)Convert.ToDecimal(preco);
            novoRestaurante.RESTADESCRICAO = descricao;
            novoRestaurante.RESTAPREPROMOCAO = precopromocao;
            novoRestaurante.RESTACATEGORIA = categoria;
            novoRestaurante.imagem = Convert.ToString(imagem);


            bd.Restaurante.Add(novoRestaurante);

            return RedirectToAction("Index");
        }

        public ActionResult GetImagemDoArrayBytes()
        {
            try
            {
                // caminho da imagem
                string imgPath = Server.MapPath("~/Imagens/simplista.png");
                // Converte a imagem em um array de bytes
                byte[] dadosByte = System.IO.File.ReadAllBytes(imgPath);
                //Converte o array de bytes para base64string   
                string imreBase64Dados = Convert.ToBase64String(dadosByte);
                string imagemDadosURL = string.Format("data:image/png;base64,{0}", imreBase64Dados);
                //Passando os dados da imagem para a viewbag
                ViewBag.DadosImagem = imagemDadosURL;
                //exibe a view
                return View();
            }
            catch
            {
                throw;
            }
        }

        public ActionResult GetImagem()
        {
            try
            {
                string path = Server.MapPath("~/Imagens/andromeda.png");
                byte[] imagemByteDados = System.IO.File.ReadAllBytes(path);
                return File(imagemByteDados, "image/png");
            }
            catch
            {
                throw;
            }
        }

        [HttpGet]
        public ActionResult Edit(int? id)
        {
            Restaurante Localizarrestaurante = bd.Restaurante.ToList().Where(x => x.RESTAUID == id).First();
            return View(Localizarrestaurante);
        }

        [HttpPost]
        public ActionResult Edit(int? id, string nome, string preco,string descricao,string precopromocao,string categoria,byte imagem)
        {
            Restaurante atualizarrestaurante = bd.Restaurante.ToList().Where(x => x.RESTAUID == id).First();
            atualizarrestaurante.RESTANOME = nome;
            atualizarrestaurante.RESTAPRECO = Convert.ToInt32(preco);
            atualizarrestaurante.RESTADESCRICAO = descricao;
            atualizarrestaurante.RESTAPREPROMOCAO = precopromocao;
            atualizarrestaurante.RESTACATEGORIA = categoria;
            atualizarrestaurante.imagem = Convert.ToString(imagem);


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

    }
}