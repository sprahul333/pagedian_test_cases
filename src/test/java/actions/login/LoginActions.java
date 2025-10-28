package actions.login;

import pages.login.LoginPage;

public class LoginActions extends LoginPage {

    protected LoginActions enterDataIntoUserName(String userName)
    {
        seleniumUtils.typeOn(txt_UserName,userName,"User Name");
        return this;
    }

    protected LoginActions enterDataIntoPassword(String pass)
    {
        seleniumUtils.typeOn(txt_Password,pass,"Password");
        return this;
    }

    protected LoginActions clickOnLogin()
    {
        seleniumUtils.clickOn(btn_Login,"Login");
        return this;
    }

    protected LoginPage clickOnLogOut()
    {
        seleniumUtils.clickOn(btn_Logout,"Logout");
        return this;
    }

    
}
