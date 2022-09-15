using Microsoft.Ajax.Utilities;
using Projeto_Lunary.Models;
using QRCoder;
using System;
using System.Activities.Validation;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Validation;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Web;
using System.Web.Mvc;
using System.Windows.Controls;

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

        public ActionResult Create()
        {
            ViewBag.listacategoria = bd.Categorias.ToList();
            return View();
        }

        [HttpPost]
        public ActionResult Create (string nome,float preco, string descricao, string precopromocao, string categoria, HttpPostedFileBase imagem)
        {
            Restaurante novoRestaurante = new Restaurante();
            novoRestaurante.RESTANOME = nome;
            novoRestaurante.RESTAPRECO = preco;
            novoRestaurante.RESTADESCRICAO = descricao;
            novoRestaurante.RESTAPREPROMOCAO = precopromocao;
            novoRestaurante.RESTACATEGORIA = categoria;
            using (var memoryStream = new MemoryStream())
            {
                imagem.InputStream.CopyTo(memoryStream);
                novoRestaurante.imagem = memoryStream.ToArray();
            }
            bd.Restaurante.Add(novoRestaurante);
            bd.SaveChanges();
            return RedirectToAction("Index");
        }

        [HttpGet]
        public ActionResult Editar(int? id)
        {
            Restaurante Localizarrestaurante = bd.Restaurante.ToList().Where(x => x.RESTAUID == id).First();
            ViewBag.listacategoria = bd.Categorias.ToList();
            return View(Localizarrestaurante);
        }

        [HttpPost]
        
        public ActionResult Editar(int? id, string nome, float preco, string descricao, string precopromocao, string categoria, HttpPostedFileBase imagem)
        {
            Restaurante atualizarProduto = bd.Restaurante.ToList().Where(x => x.RESTAUID == id).First();
            atualizarProduto.RESTANOME = nome;
            atualizarProduto.RESTAPRECO = preco;
            atualizarProduto.RESTADESCRICAO = descricao;
            atualizarProduto.RESTAPREPROMOCAO = precopromocao;
            atualizarProduto.RESTACATEGORIA = categoria;
            using (var memoryStream = new MemoryStream())
            {
                imagem.InputStream.CopyTo(memoryStream);
                atualizarProduto.imagem = memoryStream.ToArray();
            }

            bd.Entry(atualizarProduto).State = EntityState.Modified;
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



        public ActionResult Excluir(int? id)
        {
            Restaurante excluirprato = bd.Restaurante.ToList().Where(x => x.RESTAUID == id).First();
            return View(excluirprato);
        }

        [HttpPost]
        public ActionResult ExcluirConfirmar(int? id)
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

        public ActionResult QRCODindex()
        {
            return View();
        }

        [HttpPost]
        public ActionResult QRCODindex(string qrcode)
        {
            using (MemoryStream ms = new MemoryStream())
            {
                QRCodeGenerator qRCodeGenerator = new QRCodeGenerator();
                QRCodeData qrCodeData = qRCodeGenerator.CreateQrCode(qrcode, QRCodeGenerator.ECCLevel.Q);
                QRCode qrCode = new QRCode(qrCodeData);

                using (Bitmap bitmap = qrCode.GetGraphic(20))
                {
                    bitmap.Save(ms, ImageFormat.Png);
                    ViewBag.QRCodeImage = "data:image/png;base64," + Convert.ToBase64String(ms.ToArray());
                }
            }
            return View();
        }

    }
}