using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using PaddlersParadise.Models;
using Microsoft.AspNetCore.Identity;
using System.Diagnostics;


namespace PaddlersParadise.Controllers
{
    public class RiverRunController : Controller
    {

        private readonly ApplicationDbContext db = new ApplicationDbContext();
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly SignInManager<ApplicationUser> _signInManager;

        public RiverRunController(UserManager<ApplicationUser> userManager, SignInManager<ApplicationUser> signInManager)
        {
            _userManager = userManager;
            _signInManager = signInManager;
           
        }
        public IActionResult Index()
        {
            var riverList = db.RiverRuns.ToList();
            Debug.WriteLine("riverlist: "+riverList);
            return View(riverList);
        }
    }
}
