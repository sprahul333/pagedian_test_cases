package stepDefs;

import business.LoginBusiness;
import io.cucumber.java.PendingException;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;

public class LoginStepDefinitions
{
    LoginBusiness loginBusiness=new LoginBusiness();

    @And("Login using {string}")
    public void loginUsing(String userType) {
        loginBusiness.loginToTheApplication(userType);
    }

    @Then("Logout from the application")
    public void logoutFromTheApplication() {
        loginBusiness.logOut();
    }
}
