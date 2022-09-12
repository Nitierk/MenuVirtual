﻿using Projeto_Lunary.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
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
        BDLunary bd = new BDLunary();
        public ActionResult Index()
        {
            if (Session["MyCurso"] != null)
            {
                return View(bd.Restaurante.ToList());
            }
            else
            {
                return RedirectToAction("Login", "Home");
            }

        }

        public ActionResult Create()
        {
            if (Session["MyCurso"] != null)
            {
                ViewBag.listacategoria = bd.Categorias.ToList();
                return View();
            }
            else
            {
                return RedirectToAction("Login", "Home");
            }

        }

        [HttpPost]
        public ActionResult Create(string nome, float preco, string descricao, string precopromocao, string categoria, HttpPostedFileBase imagem)
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
            if (Session["MyCurso"] != null)
            {
                Restaurante Localizarrestaurante = bd.Restaurante.ToList().Where(x => x.RESTAUID == id).First();
                ViewBag.listacategoria = bd.Categorias.ToList();
                return View(Localizarrestaurante);
            }
            else
            {
                return RedirectToAction("Login", "Home");
            }

        }

        [HttpPost]
        public ActionResult Editar(int? id, string nome, float preco, string descricao, string precopromocao, string categoria, HttpPostedFileBase imagem)
        {
            Restaurante atualizarrestaurante = bd.Restaurante.ToList().Where(x => x.RESTAUID == id).First();
            atualizarrestaurante.RESTANOME = nome;
            atualizarrestaurante.RESTAPRECO = preco;
            atualizarrestaurante.RESTADESCRICAO = descricao;
            atualizarrestaurante.RESTAPREPROMOCAO = precopromocao;
            atualizarrestaurante.RESTACATEGORIA = categoria;
            using (var memoryStream = new MemoryStream())
            {
                imagem.InputStream.CopyTo(memoryStream);
                atualizarrestaurante.imagem = memoryStream.ToArray();
            }


            bd.Entry(atualizarrestaurante).State = EntityState.Modified;
            bd.SaveChanges();
            return RedirectToAction("index");
        }

        public ActionResult Excluir(int? id)
        {
            if (Session["MyCurso"] != null)
            {
                Restaurante excluiroproduto = bd.Restaurante.ToList().Where(x => x.RESTAUID == id).First();
                return RedirectToAction("index");
            }
            else
            {
                return RedirectToAction("Login", "Home");
            }

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


    }
}