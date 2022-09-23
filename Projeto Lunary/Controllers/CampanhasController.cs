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
    public class CampanhasController : Controller
    {
        // GET: Campanhas

        LunaryEntities bd = new LunaryEntities();
        public ActionResult Index()
        {
            return View(bd.Campanhas.ToList());
        }
        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(string Descricao, float CAMPRECO, HttpPostedFileBase Foto)
        {
            Campanhas novacampanha = new Campanhas();
            novacampanha.CAMDESCRICAO = Descricao;
            novacampanha.CAMPRECO = CAMPRECO;
            using (var memoryStream = new MemoryStream())
            {
                Foto.InputStream.CopyTo(memoryStream);
                novacampanha.CAMFOTO = memoryStream.ToArray();
            }
            bd.Campanhas.Add(novacampanha);
            bd.SaveChanges();
            return RedirectToAction("Index");
        }
        [HttpGet]
        public ActionResult Editar(int? id)
        {
            Campanhas Localizarcampanha = bd.Campanhas.ToList().Where(x => x.CAMID == id).First();
            return View(Localizarcampanha);
        }

        [HttpPost]
        public ActionResult Editar(int? id, string Descricao, float CAMPRECO, HttpPostedFileBase Foto)
        {
            Campanhas atualizarcampanhas = bd.Campanhas.ToList().Where(x => x.CAMID == id).First();
            atualizarcampanhas.CAMDESCRICAO = Descricao;
            atualizarcampanhas.CAMPRECO = CAMPRECO;
            using (var memoryStream = new MemoryStream())
            {
                Foto.InputStream.CopyTo(memoryStream);
                atualizarcampanhas.CAMFOTO = memoryStream.ToArray();
            }

            bd.Entry(atualizarcampanhas).State = EntityState.Modified;
            bd.SaveChanges();
            return RedirectToAction("index");
        }

        public ActionResult Excluir(int? id)
        {
            Campanhas excluircampanha = bd.Campanhas.ToList().Where(x => x.CAMID == id).First();
            return RedirectToAction("index");
        }
        [HttpPost]
        public ActionResult ExcluirConfirma(int? id)
        {
            Campanhas excluircampanha = bd.Campanhas.ToList().Where(x => x.CAMID == id).First();
            bd.Campanhas.Remove(excluircampanha);
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