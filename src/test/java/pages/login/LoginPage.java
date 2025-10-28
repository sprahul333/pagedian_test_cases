package pages.login;

import framework.ReusableLibrary;
import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;
import org.openqa.selenium.By;

@FieldDefaults(level = AccessLevel.PROTECTED,makeFinal = true)
public class LoginPage extends ReusableLibrary {

    By txt_UserName= By.id("txt_NIK");
    By txt_Password= By.id("txt_katasandi");
    By btn_Login= By.id("btn_login");
    By btn_Logout=By.xpath("//span[text()='Keluar']");
}
