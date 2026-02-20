using renn_api.features.meet;

namespace renn_api.features.account;

public class AccountModule
{
    public AccountModule(WebApplicationBuilder builder)
    {
        builder.Services.AddScoped<IMeetService, MeetService>();
        builder.Services.AddScoped<IAccountService, AccountService>();
    }
}