namespace renn_api.features.account;

public class AccountService : IAccountService
{
    public string GetAccountName(string accountId)
    {
        return accountId == "abc123" ? "Yuqi" : "Unknown";
    }

    public bool CreateAccount(string accountId, string name)
    {
        // Imagine that we create an account with these parameters and store it in the database, like:
        // var newUser = new Account(accountId, name);
        // db.Store(newUser);

        return true;
    }
}
