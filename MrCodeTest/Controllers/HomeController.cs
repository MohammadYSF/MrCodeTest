using Microsoft.AspNetCore.Mvc;
using MrCodeTest.Models;
using System.Diagnostics;

namespace MrCodeTest.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly MrCodeDataContext _db;
        public HomeController(ILogger<HomeController> logger , MrCodeDataContext db)
        {
            _db = db;
            _logger = logger;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
        public IActionResult Users()
        {
            var data = _db.Users.ToList();
            return View(data);
        }
    }
}