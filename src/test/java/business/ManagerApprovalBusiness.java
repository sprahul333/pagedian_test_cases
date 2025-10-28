package business;

import actions.passion.ManagerApproverActions;

public class ManagerApprovalBusiness extends ManagerApproverActions {

    public void approveApplication()
    {
        clickOnMyTasks();
        selectNoOfRecords("100");
        selectReferenceNumber(testUtil.getData("Reference Number"));
        clickOnOK_WithoutExposure();

//        enterRemarks("Remarks");
        saveApplicantDetails();
        clickOnConfirmDetails();
        clickOnConfirmDetails();

        seleniumUtils.switchToNewWindowAndClose();

        testUtil.setData("Reference Number",fetchReferenceNumber());
        clickOnOK_ReferenceNumber();
        clickOnOK_WithoutExposure();
    }
}
