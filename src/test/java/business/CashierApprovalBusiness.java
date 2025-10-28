package business;

import actions.passion.CashierApproverActions;

public class CashierApprovalBusiness extends CashierApproverActions {

    public void approveApplication()
    {
        clickOnMyTasks();
        selectNoOfRecords("100");
        selectReferenceNumber(testUtil.getData("Reference Number"));
        clickOnOK_WithoutExposure();
        clickOnConfirmDetails();

        enterRemarks("Remarks");
        saveApplicantDetails();

        testUtil.setData("Reference Number",fetchReferenceNumber());
        clickOnOK_ReferenceNumber();
        clickOnOK_WithoutExposure();
    }
}
