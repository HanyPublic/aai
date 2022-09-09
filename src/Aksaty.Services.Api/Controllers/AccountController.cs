using System.Threading.Tasks;
using Aksaty.Application.Interfaces;
using Aksaty.Application.ViewModels;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Options;
using NetDevPack.Identity.Jwt;

namespace Aksaty.Services.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AccountController : ApiController
    {
        private readonly SignInManager<IdentityUser> _signInManager;
        private readonly UserManager<IdentityUser> _userManager;
        private readonly IUserService _userService;
        private readonly ITanentAppService _tanentService;

        public AccountController(
            SignInManager<IdentityUser> signInManager,
            UserManager<IdentityUser> userManager,
            IUserService userService,
            ITanentAppService tanentAppService)
        {
            _userManager = userManager;
            _signInManager = signInManager;
            _userService = userService;
            _tanentService = tanentAppService;
        }

        [HttpPost]
        [Route("register")]
        public async Task<ActionResult> Register(UserRegisterViewModel viewModel)
        {
            if (!ModelState.IsValid) return CustomResponse(ModelState);

            if (string.IsNullOrEmpty(viewModel.Email) && string.IsNullOrEmpty(viewModel.UserName)) return BadRequest("Email or mobile are required.");

            var user = new IdentityUser();

            if (string.IsNullOrEmpty(viewModel.UserName))
            {
                user.UserName = viewModel.Email.ToLower().Trim();
                user.Email = viewModel.Email.ToLower().Trim();
                user.EmailConfirmed = true;
            }
            else
            {
                user.UserName = viewModel.UserName.ToLower().Trim();
            }


            var result = await _userManager.CreateAsync(user, viewModel.Password);

            if (result.Succeeded)
            {
                var tanentResult = await _tanentService.AddUpdate(new TanentViewModel(viewModel.CompanyName, user.Id));
                if (tanentResult.IsValid)
                {
                    await _userManager.AddClaimAsync(user, new System.Security.Claims.Claim("TanentId", (await _tanentService.GetByUserId(user.Id)).Id.ToString()));
                }
                var token = await _userService.GetFullJwt(user);
                return CustomResponse(new UserViewModel(user.Id, user.Email, user.UserName, token ,viewModel.CompanyName));
            }

            foreach (var error in result.Errors)
            {
                AddError(error.Description);
            }

            return CustomResponse();
        }

        [HttpPost]
        [Route("login")]
        public async Task<IActionResult> Login(UserLogInViewModel loginUser)
        {
            if (!ModelState.IsValid) return CustomResponse(ModelState);

            var result = await _signInManager.PasswordSignInAsync(loginUser.Email, loginUser.Password, false, true);

            if (result.Succeeded)
            {
                var user = await _userService.GetUserByEmailOrUserName(loginUser.Email);
                return CustomResponse(user);
            }

            if (result.IsLockedOut)
            {
                AddError("This user is temporarily blocked");
                return CustomResponse();
            }

            AddError("Incorrect user or password");
            return CustomResponse();
        }
        [HttpGet]
        [Route("logout")]
        [Authorize]
        public async Task<IActionResult> LogOut()
        {
            await _signInManager.SignOutAsync();
            return Ok();
        }
    }
}
