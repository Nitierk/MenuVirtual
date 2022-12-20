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
using QRCoder;
using System.Drawing.Imaging;
using System.Drawing;
using System.Windows.Shapes;

namespace Projeto_Lunary.Controllers
{
    [Route("Adm")]
    [Authorize]
    public class AdminController : Controller
    {
        
        LunaryEntities1 bd = new LunaryEntities1();
        // GET: Admin
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult ListPratos(int? i)
        {
            var lista = bd.Restaurante.ToList().ToPagedList(i ?? 1,15);
            return View(lista);

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
                try
                {
                    Image imageOriginal = Image.FromStream(imagem.InputStream, true, true);
                    //dimensoes originais de imagem
                    double largura = imageOriginal.Width;
                    double altura = imageOriginal.Height;
                    //obter nova altura
                    double proporcao = 232 / largura;
                    int novaAltura = (int)(proporcao * altura);
                    var miniatura = new Bitmap(imageOriginal, new Size(232, novaAltura));
                    ImageConverter _imageConverter = new ImageConverter();
                    novoRestaurante.imagem = (byte[])_imageConverter.ConvertTo(miniatura, typeof(byte[]));
                }
                catch (Exception)
                {
                    Response.Write(@"<script language='javascript'>alert('Formato não aceito');</script>");
                    
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
            ViewBag.Error = "";
            Restaurante atualizarrestaurante = bd.Restaurante.ToList().Where(x => x.RESTAUID == id).First();
            atualizarrestaurante.RESTANOME = nome;
            atualizarrestaurante.RESTAPRECO = preco;
            atualizarrestaurante.RESTADESCRICAO = descricao;
            atualizarrestaurante.RESTAPREPROMOCAO = precopromocao;
            atualizarrestaurante.RESTACATEGORIA = categoria;

            if (imagem != null)
	        {
                try
                {
                    Image imageOriginal = Image.FromStream(imagem.InputStream, true, true);
                    //dimensoes originais de imagem
                    double largura = imageOriginal.Width;
                    double altura = imageOriginal.Height;
                    //obter nova altura
                    double proporcao = 232 / largura;
                    int novaAltura = (int)(proporcao * altura);
                    var miniatura = new Bitmap(imageOriginal, new Size(232, novaAltura));
                    ImageConverter _imageConverter = new ImageConverter();
                    atualizarrestaurante.imagem = (byte[])_imageConverter.ConvertTo(miniatura, typeof(byte[]));
                }
                catch (Exception)
                {
                    ViewBag.Error = "Formato não aceito";
                    return View(Request.Url.AbsoluteUri);
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

        public ActionResult ProdutosCurtidos()
        {
            ViewBag.Rank = bd.Restaurante.ToList().OrderByDescending(x => ((uint?)x.Curtidas)).ToList();
            return View();
        }

        [HttpPost]
        public ActionResult QR(string qrcode)
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