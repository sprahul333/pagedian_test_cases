package actions.passion;

import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;
import org.openqa.selenium.Keys;
import pages.passion.CashierApproverPages;
import pages.passion.PenaCashierApproverPages;

@FieldDefaults(level = AccessLevel.PROTECTED,makeFinal = true)
public class CashierApproverActions extends CashierApproverPages {

    protected CashierApproverActions clickOnMyTasks()
    {
        seleniumUtils.clickOn(btn_MyTasks,"My Tasks");
        return this;
    }

    protected CashierApproverActions selectNoOfRecords(String noOfRecords)
    {
        seleniumUtils.typeOn(txt_NoOfRecords,noOfRecords)
                .sendKeys(txt_NoOfRecords, Keys.ENTER);
        return this;
    }

    protected CashierApproverActions selectReferenceNumber(String referenceNumber)
    {
        seleniumUtils.clickOn(fld_SelectReferenceNumber(referenceNumber),"Reference Number");
        return this;
    }

    protected CashierApproverActions clickOnOK_WithoutExposure()
    {
        seleniumUtils.clickOn(btn_OK_LoanApplicationWithExposureChecking,"Ok without Exposure Checking");
        return this;
    }

    protected CashierApproverActions clickOnConfirmDetails()
    {
        seleniumUtils.clickOn(btn_ConfirmDetails,"Confirm Details");
        return this;
    }


    protected CashierApproverActions enterRemarks(String remarks)
    {
        seleniumUtils.typeOn(txt_Remarks,remarks);
        return this;
    }

    protected CashierApproverActions saveApplicantDetails()
    {
        seleniumUtils.clickOn(btn_SaveApplicantDetails,"Save Applicant Details");
        return this;
    }

    protected String fetchReferenceNumber()
    {
        return seleniumUtils.getText(fld_ReferenceNumber,"Reference Number").split(":")[1];
    }

    //Post this click on ok with exposure actions
    protected CashierApproverActions clickOnOK_ReferenceNumber()
    {
        seleniumUtils.clickOn(btn_OK_ReferenceNumber,"OK --> Reference Number");
        return this;
    }
}
