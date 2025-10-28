package actions.homescreen;

import framework.PathUtils;
import org.openqa.selenium.Keys;
import pages.homescreen.HomePage;

public class HomeActions extends HomePage {

    protected HomeActions enterMenuNumber(String menuNumber)
    {
        seleniumUtils.typeOn(txt_Menu,menuNumber);
        seleniumUtils.clickOn(btn_Cari,"Cari");
        return this;
    }
}
