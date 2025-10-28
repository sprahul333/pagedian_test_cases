#language:id
Fitur: Passion Flow Approval

  Latar Belakang:
    Dengan Luncurkan Aplikasi

  @RegressionSuite @Banking @CreateCustomer @JIRAID_123
  Skenario: Buat pelanggan baru dan verifikasi
    Dengan Kasir pada screen Pengajuan Mikro
    Dan Kasir input semua mandatory data
    Dan Cashier clicks the tombol "Simpan"
    Dan Kasir click "Yakin, Lanjutkan"
    Dan Kasir melihat pop up "Data berhasil disimpan. No. Referensi : ACCOUNT_NO"
    Ketika Penaksir pada menu TugasKu
    Dan Penaksir klik No Aplikasi (Application Number) to begin the Internal Checking (Internal Review) process
    Dan Penaksir select di bagian Keputusan
    Dan Penaksir klik tombol Simpan
    Dan Penaksir melihat pop-up: "Data berhasil disimpan. No. Referensi : ACCOUNT_NO"
    Dan Penaksir pada menu TugasKu
    Dan Penaksir klik No Aplikasi yang akan dilakukan proses LPBJ
    Dan Penaksir klik tombol Simpan
    Dan Penaksir melihat pop up "Data berhasil disimpan. No. Referensi : ACCOUNT_NO"
    Dan Manager Bisnis pada menu TugasKu
    Dan Manager Bisnis klik No.Aplikasi yang akan dilakukan proses approval
    Dan Manager Bisnis pilih keputusan "Setujui" kemudian klik button "Simpan"
    Dan Manager Bisnis klik button "Yakin, Lanjutkan" pada pop up konfirmasi "Apakah Anda yakin untuk menyimpan data ini?"
    Dan Penaksir melihat informasi "Data Approval Dikirim Ke Unit Asalnya!" dan "Data berhasil disimpan No.Referensi :"
    Dan Penaksir pada menu TugasKu
    Dan Penaksir klik No Aplikasi yang akan dilakukan proses Konfirmasi Nasabah
    Dan Penaksir pilih Nasabah Setuju pada Konfirmasi Nasabah
    Dan Penaksir klik tombol Simpan
    Dan Penaksir melihat pop up "Data berhasil disimpan. No. Referensi : NO_KONTRAK"
    Dan Penaksir pada menu TugasKu
    Dan Penaksir klik No Aplikasi yang akan dilakukan proses Pembentukan Kredit
    Dan Penaksir klik tombol Simpan
    Dan Penaksir klik button "Yakin, Lanjutkan" pada pop up konfirmasi "Apakah Anda yakin untuk mencairkan kredit ini?"
    Dan Penaksir melihat pop up "Data berhasil disimpan. No. Referensi : NO_KONTRAK"
    Ketika Kasir pada menu TugasKu
    Dan Kasir klik No Aplikasi yang akan dilakukan proses Pencairan
    Dan Kasir klik tombol Simpan
    Maka Kasir melihat pop up "Data berhasil disimpan, proses pencairan Mikro KRASIDA secara tunai! No.Referensi :"
