using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using PaddlersParadise.Models;
using Microsoft.AspNetCore.Identity;
using PaddlersParadise.ViewModels;
using Microsoft.AspNetCore.Http;
using System.IO;
using System.Diagnostics;

namespace SalesTracker.Controllers
{
    public class AccountController : Controller
    {

        private readonly ApplicationDbContext _db;
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly SignInManager<ApplicationUser> _signInManager;

        public AccountController(UserManager<ApplicationUser> userManager, SignInManager<ApplicationUser> signInManager, ApplicationDbContext db)
        {
            _userManager = userManager;
            _signInManager = signInManager;
            _db = db;
        }
        public async Task<IActionResult> Index()
        {
            if (User.Identity.Name != null)
            {
                var user = await _userManager.GetUserAsync(User);
                return View(user);
            }
            else
            {
                return RedirectToAction("Login");
            }

        }
        public IActionResult Profile(string id)
        {
            Debug.WriteLine("*****UserName***** " + id);
            var userProfile = _db.purplepeopleeaters.FirstOrDefault(user => user.UserName == id);
            return View(userProfile);
        }
        public IActionResult Register()
        {

            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Register(RegisterViewModel model)
        {
            var user = new ApplicationUser { UserName = model.UserName, Email = model.Email };
            IdentityResult result = await _userManager.CreateAsync(user, model.Password);
            if (result.Succeeded)
            {
                return RedirectToAction("Index");
            }
            else
            {
                return View();
            }
        }
        public IActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Login(LoginViewModel model)
        {
            Microsoft.AspNetCore.Identity.SignInResult result = await _signInManager.PasswordSignInAsync(model.UserName, model.Password, isPersistent: true, lockoutOnFailure: false);
            if (result.Succeeded)
            {
                
                return RedirectToAction("Index");
            }
            else
            {
                return View();
            }
        }
        public async Task<IActionResult> EditProfile(string displayName, string bio, IFormFile profilePicture)
        {
            Debug.WriteLine("displayName****** " + displayName + " bio***** " + bio + " profilePic" + profilePicture);
            var user = await _userManager.GetUserAsync(User);
            var userInDb = _db.purplepeopleeaters.FirstOrDefault(appUser => appUser.Id == user.Id);
            if(displayName!=null)
            {
                userInDb.displayName = displayName;
            }
            if(bio!=null)
            {
                userInDb.bio = bio;
            }
            byte[] pictureArray = new byte[0];
            if (profilePicture != null)
            {
                using (var fileStream = profilePicture.OpenReadStream())
                using (var ms = new MemoryStream())
                {
                    fileStream.CopyTo(ms);
                    pictureArray = ms.ToArray();
                    userInDb.profilePicture = pictureArray;
                }
            }
            _db.SaveChanges();
            return RedirectToAction("Index");
        }
        
        public async Task<IActionResult> LogOff()
        {
            await _signInManager.SignOutAsync();
            return RedirectToAction("Index", "Home");
        }
       
    }
}