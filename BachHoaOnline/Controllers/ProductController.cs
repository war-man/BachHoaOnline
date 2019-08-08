﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using BachHoaOnline.Helper;
using BachHoaOnline.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace BachHoaOnline.Controllers
{
    public class ProductController : Controller
    {
        BACHHOA_ONLINEContext db = new BACHHOA_ONLINEContext();

        public IActionResult Index()
        {
            return View(db.Hanghoa.ToList());
        }

        public IActionResult Create()
        {            
            return View();
        }

        public IActionResult DoCreate(Hanghoa hh, IFormFile Hinh)
        {
            if (Hinh != null)
            {
                string path = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", "images", Hinh.FileName);
                using (var f = new FileStream(path, FileMode.Create))
                {
                    Hinh.CopyTo(f);
                }
                hh.Hinh = Hinh.FileName;
            }

            db.Hanghoa.Add(hh);
            db.SaveChanges();
            ViewBag.status = "Tạo mới thành công.";
            return View("Create");
        }

        public IActionResult Update(int id)
        {
            return View(db.Hanghoa.Where(x=>x.Mahh==id).SingleOrDefault());
        }

        public IActionResult DoUpdate(Hanghoa hh, IFormFile Hinh)
        {
            Hanghoa des = db.Hanghoa.Where(x => x.Mahh == hh.Mahh).SingleOrDefault();
            if (Hinh != null)
            {
                string path = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", "images", Hinh.FileName);
                using (var f = new FileStream(path, FileMode.Create))
                {
                    Hinh.CopyTo(f);
                }
                hh.Hinh = Hinh.FileName;
            }
            des.Tenhh = hh.Tenhh;
            des.Tenalias = hh.Tenalias;
            des.Mota = hh.Mota;
            des.Hinh = hh.Hinh;
            des.Giamgia = hh.Giamgia;
            des.Dongia = hh.Dongia;
            des.Chitietloai = hh.Chitietloai;
            des.Maloai = hh.Maloai;
            des.Mancc = hh.Mancc;
            des.Math = hh.Math;
            des.Maxx = hh.Maxx;
            des.Solanxem = hh.Solanxem;
            des.Ngaysx = hh.Ngaysx;
            db.SaveChanges();
            ViewBag.status = "Cập nhật thành công.";
            return View("Update");
        }

        public IActionResult Delete(int id)
        {
            return View(db.Hanghoa.Where(x => x.Mahh == id).SingleOrDefault());
        }

        public IActionResult DoDelete(Hanghoa hh)
        {
            db.Hanghoa.Remove(db.Hanghoa.Where(x=>x.Mahh==hh.Mahh).SingleOrDefault());
            db.SaveChanges();
            ViewBag.status = "Đã xóa thành công.";
            return View("Delete");
        }

        public string TenAlias(string tenhh)
        {
            if (tenhh.Length == 0)
                return "";
            return StaticClass.ToURLFriendly(tenhh);
        }
    }
}