using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using PaddlersParadise.Models;


namespace PaddlersParadise.Controllers
{

    [Authorize(Roles = "Admin")]
    public class RolesController : Controller
    {
        private readonly ApplicationDbContext _db;
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly SignInManager<ApplicationUser> _signInManager;

        public RolesController(UserManager<ApplicationUser> userManager, SignInManager<ApplicationUser> signInManager, ApplicationDbContext db)
        {
            _userManager = userManager;
            _signInManager = signInManager;
            _db = db;
        }

        [AllowAnonymous]
        public IActionResult Index()
        {
            var roles = _db.Roles.ToList();
            if(roles !=null)
            {
            return View(roles);
            }
            else
            {
                return View();
            }
        }

        public IActionResult Create()
        {
            return View();
        }

        [HttpPost, ActionName("Create")]
        public IActionResult CreateRole()
        {
            try
            {
                string roleName = HttpContext.Request.Form["RoleName"];
                _db.Roles.Add(new IdentityRole()
                {
                    Name = roleName,
                    NormalizedName = roleName.ToUpper()
                });
                _db.SaveChanges();
                ViewBag.ResultMessage = "Role created successfully!";
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        public IActionResult Delete(string RoleName)
        {
            var thisRole = _db.Roles.Where(r => r.Name.Equals(RoleName, StringComparison.CurrentCultureIgnoreCase)).FirstOrDefault();
            _db.Roles.Remove(thisRole);
            _db.SaveChanges();
            return RedirectToAction("Index");
        }

        public IActionResult Edit(string id)
        {
            var thisRole = _db.Roles.Where(r => r.Id == id).FirstOrDefault();
            return View(thisRole);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(IdentityRole role)
        {
            try
            {
                var thisRole = _db.Roles.Where(r => r.Id == role.Id).FirstOrDefault();
                thisRole.Name = role.Name;
                thisRole.NormalizedName = role.Name.ToUpper();
                _db.Entry(thisRole).State = EntityState.Modified;
                _db.SaveChanges();

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        public IActionResult Manage()
        {
            var list = _db.Roles.OrderBy(r => r.Name).ToList().Select(rr =>
                new SelectListItem { Value = rr.Name.ToString(), Text = rr.Name }).ToList();
            ViewBag.Roles = list;
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> AddRoleToUser(string userName, string roleName)
        {
            ApplicationUser user = _db.Users.Where(u => u.UserName.Equals(userName, StringComparison.CurrentCultureIgnoreCase)).FirstOrDefault();
            await _userManager.AddToRoleAsync(user, roleName);

            ViewBag.ResultMessage = "Role created successfully!";

            var list = _db.Roles.OrderBy(r => r.Name).ToList().Select(rr =>
                new SelectListItem { Value = rr.Name.ToString(), Text = rr.Name }).ToList();
            ViewBag.Roles = list;
            return View("Manage");
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> GetRoles(string UserName)
        {
            if (!string.IsNullOrWhiteSpace(UserName))
            {
                ApplicationUser user = _db.Users.Where(u => u.UserName.Equals(UserName, StringComparison.CurrentCultureIgnoreCase)).FirstOrDefault();

                ViewBag.RolesForThisUser = await _userManager.GetRolesAsync(user);

                var list = _db.Roles.OrderBy(r => r.Name).ToList().Select(rr => new SelectListItem { Value = rr.Name.ToString(), Text = rr.Name }).ToList();

                ViewBag.Roles = list;

            }
            return View("Manage");
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteRoleForUser(string UserName, string RoleName)
        {
            ApplicationUser user = _db.Users.Where(u => u.UserName.Equals(UserName, StringComparison.CurrentCultureIgnoreCase)).FirstOrDefault();
            bool inRole = await _userManager.IsInRoleAsync(user, RoleName);
            if (inRole)
            {
                await _userManager.RemoveFromRoleAsync(user, RoleName);
                ViewBag.ResultMessage = "Role removed from this user successfully!";
            }
            else
            {
                ViewBag.ResultMessage = "This user doesn't belong to selected role.";
            }

            var list = _db.Roles.OrderBy(r => r.Name).ToList().Select(rr => new SelectListItem { Value = rr.Name.ToString(), Text = rr.Name }).ToList();

            ViewBag.Roles = list;

            return View("Manage");
        }

    }
}