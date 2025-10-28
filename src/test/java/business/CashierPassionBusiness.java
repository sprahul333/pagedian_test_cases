package business;

import actions.passion.CashierPassionActions;
import framework.SQLConstants;
import org.testng.Assert;

public class CashierPassionBusiness extends CashierPassionActions{

    public void createLoanApplication(String loanProduct,String financingType,String cifNumber,String amount,String tenure,String rateOfInterest)
    {
        sqlActions.performQueryExecutions(SQLConstants.updateQuery_Customer(cifNumber,"0115528725564588"));

        selectLoanProducts(loanProduct);
        selectFinancingType(financingType);
        enterAmount(amount);
        selectRateOfInterest(rateOfInterest);
        selectTenure(tenure);
        clickOnCalculateInstallment();

        selectTypeOfCredit("Usaha");
        selectEconomySector("Pertanian");
        selectBusinessOwnership("Memiliki Usaha");

        enterCIFNumber(cifNumber);
        clickOnOK_WithoutExposure();
        selectIDProofs();
    }

    public void addCollateralDetails(String entryCategory,String typeOfCollateral,String kindOfJewellery,String goldCarat)
    {
        clickOnAddCollateralDetails();
        selectEntryCategory(entryCategory);
        selectTypeOfCollateral(typeOfCollateral);
        selectKindOfJewellery(kindOfJewellery);
        enterQuantity("28 ");
        enterGrossWeight("18.0");
        enterNetWeight("17.0");
        selectGoldCarat(goldCarat);
        enterRemarks("Remarks");
        saveCollateralDetails();

        Assert.assertTrue(fetchRecordsOfCollateral());
    }

    public void saveLoanApplicantDetails()
    {
        saveApplicantDetails();
        validateConfirmDetails();
        clickOnConfirmDetails();
        String referenceNumber=fetchReferenceNumber();
        testUtil.setData("Reference Number",referenceNumber);
        clickOnOK_ReferenceNumber();
        clickOnOK_WithoutExposure();
    }

}
