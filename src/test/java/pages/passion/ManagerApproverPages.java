package pages.passion;

import framework.ReusableLibrary;
import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;
import org.openqa.selenium.By;

@FieldDefaults(level = AccessLevel.PROTECTED,makeFinal = true)
public class ManagerApproverPages extends ReusableLibrary {

    By btn_MyTasks= By.xpath("//span[contains(text(),'TugasKu')]");

    By txt_NoOfRecords=By.xpath("//div[contains(text(),'Items per page')]/../../following-sibling::div/descendant::input");

    protected By fld_SelectReferenceNumber(String referenceNumber)
    {
        return By.xpath("//span[text()='"+referenceNumber+"']/.. | //div[text()='"+referenceNumber+"']/../preceding-sibling::td/descendant::div[@role='button']");
    }

    By btn_OK_LoanApplicationWithExposureChecking=By.xpath("//div[text()='Validasi Total Eksposur sementara tidak tersedia. Silahkan hubungi Admin Pusat. Selanjutnya pengajuan pinjaman dapat dilanjutkan tanpa pengecekann eksposur']/../../../descendant::span[text()='Ok']");

    By btn_SaveApplicantDetails=By.xpath("//div[@id='btn_simpan']/span");
    By btn_ConfirmDetails=By.xpath("//div/descendant::span[text()='Yakin, Lanjutkan'] | //div/descendant::span[text()='Ya']");

    By fld_ReferenceNumber=By.xpath("//div[contains(text(),'Data berhasil disimpan  No.Referensi')]");

    By btn_OK_ReferenceNumber=By.xpath("//div[contains(text(),'Data berhasil disimpan  No.Referensi')]/../../../descendant::span[text()='Ok']");

}
