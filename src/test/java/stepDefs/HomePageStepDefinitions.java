package stepDefs;

import business.HomePageBusiness;
import io.cucumber.java.PendingException;
import io.cucumber.java.en.And;

public class HomePageStepDefinitions
{

    HomePageBusiness homePageBusiness = new HomePageBusiness();

    @And("Navigate to Krasida Product Screen")
    public void navigateToKrasidaProductScreen() {
        homePageBusiness.navigateToKrasidaMenu();
    }
}
