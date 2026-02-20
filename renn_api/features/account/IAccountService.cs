namespace renn_api.features.account;

public interface IAccountService
{
    public string GetAccountName(string accountId);
    public bool CreateAccount(string accountId, string name);
}