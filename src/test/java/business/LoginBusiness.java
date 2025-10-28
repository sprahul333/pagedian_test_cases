package business;

import actions.login.LoginActions;
import framework.GenericExceptions;

public class LoginBusiness extends LoginActions {

    public void loginToTheApplication(String userType)
    {
        if(seleniumUtils.checkForTextExistsOrNot("HTTP Status 404"))
            throw new GenericExceptions("Unable to launch the application as it is down");
        if(userType.equalsIgnoreCase("Cashier"))
        {
            enterDataIntoUserName(propertiesUtil.getCashierUserName());
            enterDataIntoPassword(propertiesUtil.getCashierPassword());
            clickOnLogin();

        }

        else if(userType.equalsIgnoreCase("Penkasir"))
        {
            enterDataIntoUserName(propertiesUtil.getSupervisorUserName());
            enterDataIntoPassword(propertiesUtil.getSuperVisorPassword());
            clickOnLogin();
        }

        else if(userType.equalsIgnoreCase("Pinca"))
        {
            enterDataIntoUserName(propertiesUtil.getPincaUserName());
            enterDataIntoPassword(propertiesUtil.getPincaPassword());
            clickOnLogin();
        }

        else if(userType.equalsIgnoreCase("Branch Manager") || userType.equalsIgnoreCase("Business Manager"))
        {
            enterDataIntoUserName(propertiesUtil.getBranchUserName());
            enterDataIntoPassword(propertiesUtil.getBranchPassword());
            clickOnLogin();
        }
    }

    public void logOut()
    {
        clickOnLogOut();
    }
}
