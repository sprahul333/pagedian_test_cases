package actions.passion;

import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;
import org.openqa.selenium.Keys;
import pages.passion.CashierApproverPages;
import pages.passion.ManagerApproverPages;

@FieldDefaults(level = AccessLevel.PROTECTED,makeFinal = true)
public class ManagerApproverActions extends ManagerApproverPages {

    protected ManagerApproverActions clickOnMyTasks()
    {
        seleniumUtils.clickOn(btn_MyTasks,"My Tasks");
        return this;
    }

    protected ManagerApproverActions selectNoOfRecords(String noOfRecords)
    {
        seleniumUtils.typeOn(txt_NoOfRecords,noOfRecords)
                .sendKeys(txt_NoOfRecords, Keys.ENTER);
        return this;
    }

    protected ManagerApproverActions selectReferenceNumber(String referenceNumber)
    {
        seleniumUtils.clickOn(fld_SelectReferenceNumber(referenceNumber),"Reference Number");
        return this;
    }

    protected ManagerApproverActions clickOnOK_WithoutExposure()
    {
        if(seleniumUtils.checkForTextExistsOrNot("Validasi Total Eksposur sementara tidak tersedia. Silahkan hubungi Admin Pusat. Selanjutnya pengajuan pinjaman dapat dilanjutkan tanpa pengecekann eksposur"))
        seleniumUtils.clickOn(btn_OK_LoanApplicationWithExposureChecking,"Ok without Exposure Checking");
        return this;
    }

    protected ManagerApproverActions clickOnConfirmDetails()
    {
        seleniumUtils.clickOn(btn_ConfirmDetails,"Confirm Details");
        return this;
    }


//    protected ManagerApproverActions enterRemarks(String remarks)
//    {
//        seleniumUtils.typeOn(txt_Remarks,remarks);
//        return this;
//    }

    protected ManagerApproverActions saveApplicantDetails()
    {
        seleniumUtils.clickOn(btn_SaveApplicantDetails,"Save Applicant Details");
        return this;
    }

    protected String fetchReferenceNumber()
    {
        return seleniumUtils.getText(fld_ReferenceNumber,"Reference Number").split(":")[1];
    }

    //Post this click on ok with exposure actions
    protected ManagerApproverActions clickOnOK_ReferenceNumber()
    {
        seleniumUtils.clickOn(btn_OK_ReferenceNumber,"OK --> Reference Number");
        return this;
    }
}
