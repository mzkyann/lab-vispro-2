import 'dart:io';

void main() {
  // Menyimpan urutan tugas berdasarkan prioritas
  List<String> tugas = [];

  // Menentukan urutan tugas
  // Tugas A harus diselesaikan sebelum Tugas B
  tugas.add("Tugas A");
  tugas.add("Tugas B");
  
  // Tugas C harus selesai setelah A dan B, tetapi sebelum D
  tugas.add("Tugas C");
  
  // Tugas D harus selesai setelah C
  tugas.add("Tugas D");
  
  // Tugas E bisa diselesaikan kapan saja, ditambahkan di akhir
  tugas.add("Tugas E");

  // Menampilkan urutan penyelesaian tugas stdout.write
  stdout.write("Urutan penyelesaian tugas yang efisien:");
  displayTasks(tugas, 0);
}

// Fungsi untuk menampilkan daftar tugas secara rekursif
void displayTasks(List<String> tugas, int index) {
  // Jika index lebih besar atau sama dengan panjang daftar, hentikan rekursi
  if (index < tugas.length) {
    print("${index + 1}. ${tugas[index]}");
    // Panggil fungsi ini untuk menampilkan tugas berikutnya
    displayTasks(tugas, index + 1);
  }
}
