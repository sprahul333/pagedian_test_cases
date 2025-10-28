package business;

import actions.login.LoginActions;

public class LoginBusiness extends LoginActions {

    public void loginToTheApplication(String userType)
    {
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
