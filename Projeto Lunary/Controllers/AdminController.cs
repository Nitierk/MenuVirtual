﻿using Projeto_Lunary.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;

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
        public ActionResult ListPratos()
        {
            
            return View(bd.Restaurante);
        }

        public ActionResult Create()
        {
            ViewBag.listacategoria = bd.Categorias.ToList();
            return View();
        }

        [HttpPost]

        public ActionResult Create(string nome, float preco, string descricao, float precopromocao, string categoria, HttpPostedFileBase imagem, string oferta)
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

            //novoRestaurante.Oferta = oferta;
            bd.Restaurante.Add(novoRestaurante);
            bd.SaveChanges();
            return RedirectToAction("Index", "Admin");
        }

        [HttpGet]

        public ActionResult Editar(int? id)
        {
            Restaurante Localizarrestaurante = bd.Restaurante.ToList().Where(x => x.RESTAUID == id).First();
            ViewBag.listacategoria = bd.Categorias.ToList();
            return View(Localizarrestaurante);
        }

        [HttpPost]
        [HandleError]

        public ActionResult Editar(int? id, string nome, float preco, string descricao, float precopromocao, string categoria, HttpPostedFileBase imagem)
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
            

            bd.Entry(atualizarrestaurante).State = EntityState.Modified;
            bd.SaveChanges();
            return RedirectToAction("ListPratos");
        }

        [HttpGet]

        public ActionResult Excluir(int? id)
        {
            Restaurante excluiroproduto = bd.Restaurante.ToList().Where(x => x.RESTAUID == id).First();
            return RedirectToAction("ListPratos");
        }

        [HttpPost]

        public ActionResult ExcluirConfirma(int? id)
        {
            Restaurante excluiroproduto = bd.Restaurante.ToList().Where(x => x.RESTAUID == id).First();
            bd.Restaurante.Remove(excluiroproduto);

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
        /*
        [HttpPost]
        [Authorize]
        public ActionResult QRCODindex(string qrcode)
        {
            using (MemoryStream ms = new MemoryStream())
            {
                QRCode  Generator qRCodeGenerator = new QRCodeGenerator();
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
        */
        [HttpPost]
        [AllowAnonymous]
        public ActionResult ContagemLikes(int? id, bool status)
        {
            Restaurante atulizarLikes = bd.Restaurante.ToList().Where(x => x.RESTAUID == id).First();
            if (status)
            {
                atulizarLikes.Curtidas += 1;
            }
            else
            {
                atulizarLikes.Curtidas -= 1;
            }

            bd.Entry(atulizarLikes).State = EntityState.Modified;
            bd.SaveChanges();
            return RedirectToAction("index");
        }


    }
}