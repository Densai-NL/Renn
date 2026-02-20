using Microsoft.AspNetCore.Mvc;

namespace renn_api.features.account
{
    [ApiController]
    [Route("api/account")]
    public class AccountController(IAccountService accountService) : ControllerBase
    {
        [HttpGet]
        public IActionResult Get()
        {
            return Ok("This is the account controller");
        }

        [HttpGet("account/{accountId}")]
        public IActionResult GetAccountInfo(string accountId)
        {
            return Ok(accountService.GetAccountName(accountId));
        }
    }
}
