import 'dart:io';
void main() {
  // Kapasitas produksi per jam
  int kapasitasPerJam = 20; // unit barang
  // Jam operasional per hari
  int jamOperasionalPerHari = 8; // jam
  // Jumlah hari kerja per minggu
  int hariKerjaPerMinggu = 5; // hari

  // Menghitung total produksi dalam satu minggu
  int totalProduksiPerMinggu = kapasitasPerJam * jamOperasionalPerHari * hariKerjaPerMinggu;

  // Menampilkan hasil
  stdout.write("Total unit barang yang dihasilkan dalam satu minggu adalah $totalProduksiPerMinggu unit.");
}
