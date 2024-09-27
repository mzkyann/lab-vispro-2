import 'dart:io';

void main() {
  // Daftar barang yang akan dibawa
  List<String> barang = ['Makanan', 'Pakaian', 'Alat Masak', 'Tenda', 'Sleeping Bag'];
  List<int> berat = [3, 2, 4, 5, 2]; // berat masing-masing barang
  List<int> nilai = [50, 30, 40, 70, 20]; // nilai masing-masing barang
  int kapasitas = 10; // kapasitas maksimal ransel

  // Menampilkan informasi berat dan nilai barang
  stdout.write('Informasi Barang:');
  displayItems(barang, berat, nilai, 0);

  // Meminta input jumlah barang yang akan dibawa
  stdout.write('\nJumlah barang yang ingin dibawa (1-5):');
  int totalBerat = getUserInput(barang, berat, 0);

  // Menghitung nilai maksimum yang bisa dibawa
  int maxNilai = getMaxValue(barang, berat, nilai, kapasitas, 0, 0);
  
  // Menghitung dan menampilkan pesan kelebihan berat
  String message = 'Nilai maksimum yang bisa dibawa: $maxNilai' +
      (totalBerat > kapasitas ? ', Kelebihan berat: ${totalBerat - kapasitas} kg' : '');

  // Menampilkan pesan sesuai dengan total berat
  stdout.write(totalBerat <= kapasitas ? message : 'Kagak muat lagi lah, maksimal kapasitas $kapasitas kg!');

  // Menampilkan barang-barang yang dibawa
  displayBarangDibawa(totalBerat, barang, berat, kapasitas, 0);
}

// Fungsi untuk menampilkan informasi barang
void displayItems(List<String> barang, List<int> berat, List<int> nilai, int index) {
  index < barang.length ? (() {
    stdout.write('${index + 1}. ${barang[index]} (Berat: ${berat[index]} kg, Nilai: ${nilai[index]})');
    displayItems(barang, berat, nilai, index + 1); // rekursi untuk item berikutnya
  })() : null; // Menggunakan ternary operator
}

// Fungsi untuk mendapatkan input dari pengguna
int getUserInput(List<String> barang, List<int> berat, int index) {
  return index < barang.length ? (() {
    stdout.write('${barang[index]} - Masukkan jumlah: ');
    int jumlah = int.parse(stdin.readLineSync()!);
    return (jumlah * berat[index]) + getUserInput(barang, berat, index + 1); // rekursi untuk total berat
  })() : 0; // mengembalikan 0 jika sudah sampai akhir daftar
}

// Fungsi untuk menghitung nilai maksimum yang bisa dibawa
int getMaxValue(List<String> barang, List<int> berat, List<int> nilai, int kapasitas, int index, int currentValue) {
  return index >= barang.length || kapasitas <= 0
      ? currentValue // jika sudah tidak ada barang atau kapasitas habis
      : (berat[index] <= kapasitas
          ? getMaxValue(barang, berat, nilai, kapasitas - berat[index], index + 1, currentValue + nilai[index])
          : getMaxValue(barang, berat, nilai, kapasitas, index + 1, currentValue));
}

// Fungsi untuk menampilkan barang-barang yang dibawa
void displayBarangDibawa(int totalBerat, List<String> barang, List<int> berat, int kapasitas, int index) {
  List<String> barangDibawa = findItems(barang, berat, kapasitas, 0);
  totalBerat <= kapasitas ? (() {
    stdout.write('Barang yang dibawa:');
    displayItemsDibawa(barangDibawa, 0);
  })() : null; // Menggunakan ternary operator
}

// Fungsi untuk menemukan barang-barang yang dibawa
List<String> findItems(List<String> barang, List<int> berat, int kapasitas, int index) {
  return index < barang.length && kapasitas > 0
      ? (berat[index] <= kapasitas
          ? [barang[index]] + findItems(barang, berat, kapasitas - berat[index], index + 1)
          : findItems(barang, berat, kapasitas, index + 1))
      : []; // mengembalikan list kosong jika sudah mencapai akhir
}

// Fungsi untuk menampilkan barang-barang yang dibawa
void displayItemsDibawa(List<String> barangDibawa, int index) {
  index < barangDibawa.length ? (() {
    stdout.write('- ${barangDibawa[index]}');
    displayItemsDibawa(barangDibawa, index + 1); // rekursi untuk item berikutnya
  })() : null; // Menggunakan ternary operator
}
