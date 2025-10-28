package business;

import actions.passion.ManagerApproverActions;
import actions.passion.PenaCashierApproverActions;

public class PenaCashierApprovalBusiness extends PenaCashierApproverActions {

    public void approveApplication()
    {
        clickOnMyTasks();
        selectNoOfRecords("100");
        selectReferenceNumber(testUtil.getData("Reference Number"));
        clickOnOK_WithoutExposure();

        enterRemarks("Remarks");
        saveApplicantDetails();
        clickOnConfirmDetails();

        clickOnOk_DataApproval();

        String referenceNumber=fetchReferenceNumber();
        testUtil.setData("Reference Number",referenceNumber);
        clickOnOK_ReferenceNumber();
        clickOnOK_WithoutExposure();
    }

    public void approveApplication_LevelOne()
    {
        clickOnMyTasks();
        selectNoOfRecords("100");
        selectReferenceNumber(testUtil.getData("Reference Number"));

        enterRemarks("Remarks");
        saveApplicantDetails();
        clickOnConfirmDetails();

        String referenceNumber=fetchReferenceNumber();
        testUtil.setData("Reference Number",referenceNumber);
        clickOnOK_ReferenceNumber();
        clickOnOK_WithoutExposure();
    }
}
