using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Video.Models;

namespace Video.Controllers
{
    public class VideoController : Controller
    {
        private VideoContext db = new VideoContext();

        // GET: Video
        public ActionResult Index() {
            string[] mas = Directory.GetFiles(Request.PhysicalApplicationPath + "Video");
            for (int i = 0; i < mas.Length; i++) {
                mas[i] = Path.GetFileName(mas[i]);
            }
            ViewBag.Catalogs = mas;
            return View("Index");
        }

        [HttpPost]
        [ValidateAntiForgeryToken]

        public ActionResult Create([Bind(Include = "ID,Path,Title")] Video.Models.Video video)
        {
            if (ModelState.IsValid)
            {
                db.Videos.Add(video);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View("Index");
        }

        public FileStreamResult GetFile(string name) {
            string path = Request.PhysicalApplicationPath + "Video\\" + name;
            FileStream fileStream = new FileStream(path, FileMode.Open, FileAccess.Read);
            return new FileStreamResult(fileStream, "video/mp4");
        }
        public ActionResult GetVideo(string name) {
            ViewBag.VideoName = name;
            return View("Player");
        }

        public ActionResult Upload(HttpPostedFileBase upload) {
            if (upload != null) {
                Random rnd = new Random();
                // получаем имя файла
                Models.Video video = new Models.Video();
                string fileName = System.IO.Path.GetFileName(upload.FileName);
                string nameRnd = fileName.Remove(fileName.Length - 4) + rnd.Next(1, 100000) + ".mp4";
                video.Path =  Request.PhysicalApplicationPath + "Video\\" + fileName;
                video.Title = nameRnd;
                Create(video);

                upload.SaveAs(Server.MapPath("~/Video/" + nameRnd));
            }
            return RedirectToAction("Index");
        }
    }
}
