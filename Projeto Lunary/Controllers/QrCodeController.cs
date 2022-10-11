﻿using Projeto_Lunary.Models;
using QRCoder;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Projeto_Lunary.Controllers
{
    [Authorize]
    public class QrCodeController : Controller
    {
        // GET: QrCode

        LunaryEntities bd = new LunaryEntities();
        public ActionResult QR()
        {
            return View();
        }

        [HttpPost]
        public ActionResult QR (string qrcode)
        {
            using (MemoryStream ms = new MemoryStream())
            {
                qrcode = Request.Url.Authority +  "/Restaurante/Menu";
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