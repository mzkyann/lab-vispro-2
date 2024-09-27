import 'dart:io';
void main() {
  // Jumlah mesin cuci
  int jumlahMesinCuci = 3;
  // Waktu penggunaan per mesin cuci dalam sehari (dalam jam)
  double waktuPerMesinCuci = 2.0; // jam
  // Waktu yang dibutuhkan setiap penghuni untuk mencuci (dalam jam)
  double waktuPenghuni = 1.5; // jam
  // Jumlah penghuni
  int jumlahPenghuni = 5;

  // Total waktu yang tersedia untuk semua mesin cuci dalam sehari
  double totalWaktuTersedia = jumlahMesinCuci * waktuPerMesinCuci;

  // Menghitung berapa banyak penghuni yang bisa mencuci
  int penghuniDapatMencuci = (totalWaktuTersedia / waktuPenghuni).floor();

  // Membatasi jumlah penghuni yang dapat mencuci dengan jumlah penghuni yang ada
  if (penghuniDapatMencuci > jumlahPenghuni) {
    penghuniDapatMencuci = jumlahPenghuni; // Maksimal hanya ada 5 penghuni
  }

  // Menampilkan hasil
  stdout.write("Jumlah penghuni yang dapat mencuci di hari yang sama: $penghuniDapatMencuci");
}
