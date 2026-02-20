using renn_api.features.account;

namespace renn_api.features.meet;

public class MeetService(IAccountService accountService) : IMeetService
{
    public string Greeting(string name)
    {
        return $"Hello {name}";
    }

    public void CreateMeeting()
    {
        accountService.CreateAccount("abc123", "Yuqi");
    }
}