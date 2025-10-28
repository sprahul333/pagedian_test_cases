package pages.passion;

import framework.ReusableLibrary;
import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;
import org.openqa.selenium.By;

@FieldDefaults(level = AccessLevel.PROTECTED,makeFinal = true)
public class CashierPassionPages extends ReusableLibrary {

    By ddl_LoanProducts= By.xpath("//div[@id='cmb_produk']/descendant::select");
    By ddl_FinancingType=By.xpath("//div[@id='cmb_tujuanMikro']/descendant::select");
    By txt_LoanAmount=By.xpath("//input[@id='nmf_jumlahPengajuan']");
    By ddl_RateOfInterest=By.xpath("//div[text()='Tarif Khusus']/../..//following-sibling::div/descendant::select");
    By ddl_Tenure=By.xpath("//div[@id='cmb_jangkaWaktu']/descendant::select");
    By btn_CalculateInstallment=By.xpath("//span[text()='Hitung Angsuran']/..");
    By ddl_TypeOfCredit=By.xpath("//div[@id='cmb_jenisKredit']/descendant::select");
    By ddl_EconomySector=By.xpath("//div[@id='cmb_sektorEkonomi']/descendant::select");
    By ddl_BusinessOwnership=By.xpath("//div[@id='cmb_usaha']/descendant::select");

    //Press the enter key after entering the data
    By txt_CIFNo=By.xpath("//input[@id='txt_CIF']");

    By btn_OK_LoanApplicationWithExposureChecking=By.xpath("//div[text()='Validasi Total Eksposur sementara tidak tersedia. Silahkan hubungi Admin Pusat. Selanjutnya pengajuan pinjaman dapat dilanjutkan tanpa pengecekann eksposur']/../../../descendant::span[text()='Ok']");
    By cbx_PhotoID=By.xpath("//div[text()='Fotocopy KTP']/../preceding-sibling::td/div/descendant::span");
    By cbx_PhotoOfHusbandWife=By.xpath("//div[text()='Foto Suami / Istri']/../preceding-sibling::td/div/descendant::span");

    By btn_CollateralDetails_Add=By.xpath("//span[text()='Detail Jaminan']/../../../descendant::span[text()='Tambah']");

    By ddl_EntryCategory=By.xpath("//div[@id='cmb_rubrik']/descendant::select");
    By ddl_TypeOfCollateral=By.xpath("//div[@id='cmb_tipeJaminan']/descendant::select");

    By ddl_KindOfJewellery=By.xpath("//div[@id='cmb_jenisPerhiasan']/descendant::select");
    By txt_Quantity=By.id("nmf_jumlah");
    By txt_GrossWeight=By.id("nmf_beratKotor");
    By txt_NetWeight=By.id("nmf_beratBersih");
    By ddl_Carat=By.xpath("//div[@id='cmb_karatPerhiasan']/descendant::select");
    By txt_Remarks=By.id("txt_keterangan");

    By btn_SaveCollateralDetails=By.xpath("//div[@id='btn_simpanJaminan']/span");
    By btn_SaveApplicantDetails=By.xpath("//div[@id='btn_simpan']/span");
    By fld_ConfirmDetails=By.xpath("//div[text()='Apakah Anda yakin untuk menyimpan data ini?']");

    By fld_RowsOfCollateralData=By.xpath("(//div[@class='v-table'])[2]/descendant::tr[@class='v-table-row']");

    By btn_ConfirmDetails=By.xpath("//div/descendant::span[text()='Yakin, Lanjutkan']");

    By fld_ReferenceNumber=By.xpath("//div[contains(text(),'Data berhasil disimpan  No.Referensi')]");

    //Post this click on exposure ok button
    By btn_OK_ReferenceNumber=By.xpath("//div[contains(text(),'Data berhasil disimpan  No.Referensi')]/../../../descendant::span[text()='Ok']");

}
