package pages.homescreen;

import framework.ReusableLibrary;
import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;
import org.openqa.selenium.By;

@FieldDefaults(level = AccessLevel.PROTECTED,makeFinal = true)
public class HomePage extends ReusableLibrary
{
    By txt_Menu=By.id("txt_menu");
    By btn_Cari=By.xpath("//span[text()='Cari']/..");
}
