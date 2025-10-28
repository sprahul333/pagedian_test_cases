package stepDefs;

import business.CashierApprovalBusiness;
import business.CashierPassionBusiness;
import business.ManagerApprovalBusiness;
import business.PenaCashierApprovalBusiness;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.PendingException;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;

public class PassionStepDefinitions {

    CashierPassionBusiness cashierPassionBusiness = new CashierPassionBusiness();
    CashierApprovalBusiness cashierApprovalBusiness = new CashierApprovalBusiness();
    ManagerApprovalBusiness  managerApprovalBusiness = new ManagerApprovalBusiness();
    PenaCashierApprovalBusiness  penaCashierApprovalBusiness = new PenaCashierApprovalBusiness();

    @And("Create a Loan Application")
    public void create_a_loan_application(DataTable dataTable) {

        dataTable.asMaps().forEach( s->
        {
            cashierPassionBusiness.createLoanApplication(s.get("Loan Product"),s.get("Financing Type"),s.get("CIF Number"),s.get("Loan Amount"),s.get("Tenure"),s.get("Rate Of Interest"));
        });
    }

    @And("Add Collateral Details")
    public void addCollateralDetails(DataTable dataTable)
    {
        dataTable.asMaps().forEach(s-> {
            cashierPassionBusiness.addCollateralDetails(s.get("Entry Category"),s.get("Type of Collateral"),s.get("Type of Jewellery"),s.get("Gold Carat"));
        });
    }

    @Then("Save the loan Applicant Details")
    public void saveTheLoanApplicantDetails() {
        cashierPassionBusiness.saveLoanApplicantDetails();
    }

    @Then("Approve the Loan Application for Internal Review Process")
    public void approveTheLoanApplicationForInternalReviewProcess() {
        penaCashierApprovalBusiness.approveApplication_LevelOne();
    }

    @Then("Approve the Loan Application for carrying the LPBJ Process")
    public void approveTheLoanApplicationForCarryingTheLPBJProcess() {
        penaCashierApprovalBusiness.approveApplication();
    }

    @Then("Approve the Loan Application")
    public void approveTheLoanApplication() {
        managerApprovalBusiness.approveApplication();
    }

    @Then("Approve the Loan Application for the Customer Confirmation process")
    public void approveTheLoanApplicationForTheCustomerConfirmationProcess() {
        penaCashierApprovalBusiness.approveApplication();
    }

    @Then("Approve the Loan Application to disburse the loan Amount")
    public void approveTheLoanApplicationToDisburseTheLoanAmount()
    {
        cashierApprovalBusiness.approveApplication();
    }
}
