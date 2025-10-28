package actions.passion;

import framework.GenericExceptions;
import framework.PathUtils;
import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;
import org.openqa.selenium.Keys;
import pages.passion.PenaCashierApproverPages;

@FieldDefaults(level = AccessLevel.PROTECTED,makeFinal = true)
public class PenaCashierApproverActions extends PenaCashierApproverPages {

    public PenaCashierApproverActions clickOnMyTasks()
    {
        seleniumUtils.clickOn(btn_MyTasks,"My Tasks");
        return this;
    }

    public PenaCashierApproverActions selectNoOfRecords(String noOfRecords)
    {
        seleniumUtils.typeOn(txt_NoOfRecords,noOfRecords);
        PathUtils.applySleep(3000);
        seleniumUtils.sendKeys(txt_NoOfRecords, Keys.ENTER);
        return this;
    }

    public PenaCashierApproverActions selectReferenceNumber(String referenceNumber)
    {
        if(seleniumUtils.checkForTextExistsOrNot(referenceNumber))
            throw new GenericExceptions(referenceNumber+" does not exist in the approval screen");

        seleniumUtils.clickOn(fld_SelectReferenceNumber(referenceNumber),"Reference Number:"+ referenceNumber);
        return this;
    }

    public PenaCashierApproverActions clickOnOK_WithoutExposure()
    {
        if(seleniumUtils.checkForTextExistsOrNot("Validasi Total Eksposur sementara tidak tersedia. Silahkan hubungi Admin Pusat. Selanjutnya pengajuan pinjaman dapat dilanjutkan tanpa pengecekann eksposur"))
        seleniumUtils.clickOn(btn_OK_LoanApplicationWithExposureChecking,"Ok without Exposure Checking");
        return this;
    }

    public PenaCashierApproverActions clickOnConfirmDetails()
    {
        seleniumUtils.clickOn(btn_ConfirmDetails,"Confirm Details");
        return this;
    }


    public PenaCashierApproverPages enterRemarks(String remarks)
    {
        PathUtils.applySleep(3000);
        if(driver.findElements(txt_Remarks).size()>0)
        seleniumUtils.typeOn(txt_Remarks,remarks);
        return this;
    }

    public PenaCashierApproverActions saveApplicantDetails()
    {
        seleniumUtils.clickOn(btn_SaveApplicantDetails,"Save Applicant Details");
        return this;
    }

    public String fetchReferenceNumber()
    {
        return seleniumUtils.getText(fld_ReferenceNumber,"Reference Number").split(":")[1].trim();
    }

    public PenaCashierApproverActions clickOnOk_DataApproval()
    {
        if(seleniumUtils.checkForTextExistsOrNot("Data Approval Dikirim Ke Unit Asalnya!"))
        seleniumUtils.clickOn(btn_Ok_Data_Approval_OriginatingUnit,"Data Approval");
        return this;
    }

    //Post this click on ok with exposure actions
    public PenaCashierApproverActions clickOnOK_ReferenceNumber()
    {
        seleniumUtils.clickOn(btn_OK_ReferenceNumber,"OK --> Reference Number");
        return this;
    }


}
