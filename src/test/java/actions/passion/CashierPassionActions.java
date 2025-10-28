package actions.passion;

import framework.PathUtils;
import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.testng.Assert;
import pages.passion.CashierPassionPages;

@FieldDefaults(level = AccessLevel.PROTECTED,makeFinal = true)
public class CashierPassionActions extends CashierPassionPages {

    protected CashierPassionActions selectLoanProducts(String loanProduct)
    {
        seleniumUtils.selectOption(ddl_LoanProducts,loanProduct,"Loan Product");
        return this;
    }

    protected CashierPassionActions selectFinancingType(String financingType)
    {
        PathUtils.applySleep(3000);
        seleniumUtils.selectOption(ddl_FinancingType,financingType,"Financing Type");
        return this;
    }

    protected CashierPassionActions enterAmount(String amount)
    {
        seleniumUtils.typeOn(txt_LoanAmount,amount,"Amount");
        return this;
    }

    protected CashierPassionActions selectRateOfInterest(String rateOfInterest)
    {
        seleniumUtils.selectOption(ddl_RateOfInterest,rateOfInterest,"Rate of Interest");
        return this;
    }

    protected CashierPassionActions selectTenure(String tenure)
    {
        PathUtils.applySleep(3000);
        seleniumUtils.selectOption(ddl_Tenure,tenure,"Tenure");
        return this;
    }

    protected CashierPassionActions clickOnCalculateInstallment()
    {
        seleniumUtils.clickOn(btn_CalculateInstallment,"Calculate Installemnet");
        return this;
    }

    protected CashierPassionActions selectTypeOfCredit(String typeOfCredit)
    {
        seleniumUtils.selectOption(ddl_TypeOfCredit,typeOfCredit,"Type of Credit");
        return this;
    }

    protected CashierPassionActions selectEconomySector(String sector)
    {
        seleniumUtils.selectOption(ddl_EconomySector,sector,"Economy Sector");
        return this;
    }

    protected CashierPassionActions selectBusinessOwnership(String businessOwnership)
    {
        seleniumUtils.selectOption(ddl_BusinessOwnership,businessOwnership,"Business Ownership");
        return this;
    }

    protected CashierPassionActions enterCIFNumber(String cifNumber)
    {
        seleniumUtils.typeOn(txt_CIFNo,cifNumber,"CIF Number");
        seleniumUtils.sendKeys(txt_CIFNo, Keys.ENTER);
        return this;
    }

    protected CashierPassionActions clickOnOK_WithoutExposure()
    {
        if(seleniumUtils.checkForTextExistsOrNot("Validasi Total Eksposur sementara tidak tersedia. Silahkan hubungi Admin Pusat. Selanjutnya pengajuan pinjaman dapat dilanjutkan tanpa pengecekann eksposur"))
        seleniumUtils.clickOn(btn_OK_LoanApplicationWithExposureChecking,"Ok without Exposure Checking");
        return this;
    }

    protected CashierPassionActions selectIDProofs()
    {
        seleniumUtils.clickOn(cbx_PhotoID,"PhotoID");
        seleniumUtils.clickOn(cbx_PhotoOfHusbandWife,"Photo of Husband and Wife");
        return this;
    }

    protected CashierPassionActions clickOnAddCollateralDetails()
    {
        seleniumUtils.clickOn(btn_CollateralDetails_Add,"Add Collateral Details");
        return this;
    }

    protected CashierPassionActions selectEntryCategory(String entryCategory)
    {
        seleniumUtils.selectOption(ddl_EntryCategory,entryCategory,"Entry Category");
        return this;
    }

    protected CashierPassionActions selectTypeOfCollateral(String typeOfCollateral)
    {
        seleniumUtils.selectOption(ddl_TypeOfCollateral,typeOfCollateral,"Type of Collateral");
        return this;
    }

    protected CashierPassionActions selectKindOfJewellery(String typeOfJewellry)
    {
        seleniumUtils.selectOption(ddl_KindOfJewellery,typeOfJewellry,"Kind of Jewellery");
        return this;
    }

    protected CashierPassionActions enterQuantity(String quantity)
    {
        seleniumUtils.typeOn(txt_Quantity,quantity,"Quantity");
        return this;
    }

    protected CashierPassionActions enterGrossWeight(String grossWeight)
    {
        seleniumUtils.typeOn(txt_GrossWeight,grossWeight,"Gross Weight");
        return this;
    }

    protected CashierPassionActions enterNetWeight(String netWeight)
    {
        seleniumUtils.typeOn(txt_NetWeight,netWeight,"Net Weight");
        return this;
    }

    protected CashierPassionActions selectGoldCarat(String goldCarat)
    {
        seleniumUtils.selectOption(ddl_Carat,goldCarat,"Gold Carat");
        return this;
    }

    protected CashierPassionActions enterRemarks(String remarks)
    {
        seleniumUtils.typeOn(txt_Remarks,remarks,"Remarks");
        return this;
    }

    protected CashierPassionActions saveCollateralDetails()
    {
        seleniumUtils.clickOn(btn_SaveCollateralDetails,"Save Collateral Details");
        return this;
    }

    protected boolean fetchRecordsOfCollateral()
    {
        PathUtils.applySleep(3000);
        return driver.findElements(fld_RowsOfCollateralData).size() > 0;
    }

    protected CashierPassionActions saveApplicantDetails()
    {
        seleniumUtils.clickOn(btn_SaveApplicantDetails,"Save Applicant Details");
        return this;
    }

    protected CashierPassionActions validateConfirmDetails()
    {
        Assert.assertTrue(seleniumUtils.getText(fld_ConfirmDetails,"Confirm Details").contains("Apakah Anda yakin untuk menyimpan data ini"));
        return this;
    }

    protected CashierPassionActions clickOnConfirmDetails()
    {
        seleniumUtils.clickOn(btn_ConfirmDetails,"Confirm Details");
        return this;
    }

    protected String fetchReferenceNumber()
    {
        return seleniumUtils.getText(fld_ReferenceNumber,"Reference Number").split(":")[1].trim();
    }

    //Post this click on ok with exposure actions
    protected CashierPassionActions clickOnOK_ReferenceNumber()
    {
        seleniumUtils.clickOn(btn_OK_ReferenceNumber,"OK --> Reference Number");
        return this;
    }

}
