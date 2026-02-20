using renn_api.features.account;

namespace renn_api.features.meet;

public class MeetModule
{
    public MeetModule(WebApplicationBuilder builder)
    {
        builder.Services.AddScoped<IMeetService, MeetService>();
        builder.Services.AddScoped<IAccountService, AccountService>();
    }
}