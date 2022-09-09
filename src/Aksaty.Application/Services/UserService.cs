using Aksaty.Application.Interfaces;
using Aksaty.Application.ViewModels;
using AutoMapper;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using System;
using System.Threading.Tasks;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using Microsoft.IdentityModel.Tokens;
using System.Security.Claims;
using System.Text;
using NetDevPack.Identity.Jwt;
using Microsoft.Extensions.Options;

namespace Aksaty.Application.Services
{
    public class UserService : IUserService
    {
        private readonly UserManager<IdentityUser> _userManager;
        private readonly IMapper _mapper;
        private readonly AppJwtSettings _appJwtSettings;

        public UserService(
            UserManager<IdentityUser> userManager,
            IOptions<AppJwtSettings> appJwtSettings,
            IMapper mapper)
        {
            _userManager = userManager;
            _mapper = mapper;
            _appJwtSettings = appJwtSettings.Value;
        }

        public void Dispose()
        {
            GC.SuppressFinalize(this);
        }

        public async Task<UserViewModel> GetUserByEmailOrUserName(string email)
        {
            email = email.ToLower().Trim();
            var user = await _userManager.Users.FirstOrDefaultAsync(u => u.Email == email || u.UserName == email);
            var userModel = _mapper.Map<UserViewModel>(user);
            userModel.Token =await GetFullJwt(user);
            return userModel;
        }
        public async Task<string> GetFullJwt(IdentityUser user)
        {
            var userClaims = (await _userManager.GetClaimsAsync(user)).ToList();
            var jwtClaims = new List<Claim>();
            var identityClaims = new ClaimsIdentity();
            var userRoles = await _userManager.GetRolesAsync(user);
            jwtClaims.Add(new Claim(JwtRegisteredClaimNames.Sub, user.Id.ToString()));
            if(!string.IsNullOrEmpty(user.Email))jwtClaims.Add(new Claim(JwtRegisteredClaimNames.Email, user.Email));
            if(!string.IsNullOrEmpty(user.UserName))jwtClaims.Add(new Claim(JwtRegisteredClaimNames.UniqueName, user.UserName));
            jwtClaims.Add(new Claim(JwtRegisteredClaimNames.Jti, Guid.NewGuid().ToString()));
            jwtClaims.Add(new Claim(JwtRegisteredClaimNames.Nbf, ToUnixEpochDate(DateTime.UtcNow).ToString()));
            jwtClaims.Add(new Claim(JwtRegisteredClaimNames.Iat, ToUnixEpochDate(DateTime.UtcNow).ToString(), ClaimValueTypes.Integer64));
            identityClaims.AddClaims(userClaims);
            identityClaims.AddClaims(jwtClaims);
            userRoles.ToList().ForEach(r => identityClaims.AddClaim(new Claim("role", r)));
            return BuildToken(identityClaims);
        }
        private string BuildToken(ClaimsIdentity identityClaims)
        {
            var tokenHandler = new JwtSecurityTokenHandler();
            var key = Encoding.ASCII.GetBytes(_appJwtSettings.SecretKey);
            var token = tokenHandler.CreateToken(new SecurityTokenDescriptor
            {
                Issuer = _appJwtSettings.Issuer,
                Audience = _appJwtSettings.Audience,
                Subject = identityClaims,
                Expires = DateTime.UtcNow.AddHours(_appJwtSettings.Expiration),
                SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(key),
                    SecurityAlgorithms.HmacSha256Signature)
            });

            return tokenHandler.WriteToken(token);
        }

        private static long ToUnixEpochDate(DateTime date)
          => (long)Math.Round((date.ToUniversalTime() - new DateTimeOffset(1970, 1, 1, 0, 0, 0, TimeSpan.Zero))
              .TotalSeconds);
    }
}
