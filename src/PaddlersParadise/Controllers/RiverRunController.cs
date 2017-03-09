using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using PaddlersParadise.Models;
using Microsoft.AspNetCore.Identity;
using System.Diagnostics;
using static PaddlersParadise.Models.USGSResponse;
using Microsoft.AspNetCore.Authorization;

namespace PaddlersParadise.Controllers
{
    public class RiverRunController : Controller
    {

        private readonly ApplicationDbContext db = new ApplicationDbContext();
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly SignInManager<ApplicationUser> _signInManager;

        RiverRun riverRun = new RiverRun();
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
        [HttpPost]
        public IActionResult USGSCall(string gaugeId)
        {
            
            USGSResponse usgsResponse = new USGSResponse();
            RootObject response = usgsResponse.USGSCall(gaugeId);
            //parse json file here.
            //
            Console.WriteLine("timeSeries:****"+response.value.timeSeries[0].values[0].value[0].value);
            return Json(response);
        }

        public IActionResult RunDetails(int id)
        {
            return View(db.RiverRuns.FirstOrDefault(i=>i.id == id));
        }
        public IActionResult GaugeDetails(int id)
        {
            return View();
        }
        [Authorize(Roles = "Admin")]
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(RiverRun riverrun)
        {
            return RedirectToAction("Index");
        }
        [Authorize(Roles = "Admin")]
        public IActionResult Edit()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(RiverRun riverrun)
        {
            return RedirectToAction("Index");
        }
    }
}
