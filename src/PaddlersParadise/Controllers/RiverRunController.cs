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
          
            return View(riverList);
        }
        [HttpPost]
        public IActionResult USGSCall(string gaugeId)
        {
            
            USGSResponse usgsResponse = new USGSResponse();
            RootObject response = usgsResponse.USGSCall(gaugeId);
            //parse json file here.
            //
            //Console.WriteLine("timeSeries:****"+response.value.timeSeries[0].values[0].value[0].value);
            return Json(response);
        }
        
        public IActionResult RunDetails(int id)
        {
            //Debug.WriteLine("*************RunId" + id);
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
        public IActionResult Create(string section, string river, string riverClass, string state, int gaugeId, string gaugeName)
        {
            string State = state.ToUpper();
            string riverSection = river + " " + "[" + State + "]"+" "+section;
            Debug.WriteLine("riverSection" + riverSection);
            RiverRun newRun = new RiverRun(riverSection, riverClass, state, gaugeId, gaugeName);
            db.RiverRuns.Add(newRun);
            db.SaveChanges();
            return RedirectToAction("Index", "Admin");
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
        [HttpPost]
        public IActionResult Delete(int runId)
        {
            
            var selectedRun = db.RiverRuns.FirstOrDefault(run => run.id == runId);
            db.RiverRuns.Remove(selectedRun);
            db.SaveChanges();
            
            return RedirectToAction("Index", "RiverRun");
        }
        [HttpPost]
        public IActionResult AddDescription(string description, int runId)
        {
            
            var selectedRun = db.RiverRuns.FirstOrDefault(run => run.id == runId);
            selectedRun.description = description;
            db.SaveChanges();
            
            return RedirectToAction("RunDetails", new { id = runId });
        }
        [HttpPost]
        public async Task<IActionResult> AddExperience(string experience, int runId)
        {
            Debug.WriteLine("************" + experience);
            var user = await _userManager.GetUserAsync(User);
            var selectedRun = db.RiverRuns.FirstOrDefault(run => run.id == runId);
            Experience newExperience = new Experience(experience, user, selectedRun);
            db.Experiences.Add(newExperience);
            db.SaveChanges();
            return RedirectToAction("RunDetails", new { id = runId });
        }
    }
}
