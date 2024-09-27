import 'dart:io';

void main() {
  // Jarak antar lokasi dalam kilometer
  Map<String, Map<String, int>> jarak = {
    'A': {'B': 10, 'C': 15, 'D': 20, 'E': 25},
    'B': {'C': 35, 'D': 25, 'E': 30},
    'C': {'D': 30, 'E': 20},
    'D': {'E': 15},
  };

  // Kombinasi rute yang mungkin
  List<String> rute = ['A', 'B', 'C', 'D', 'E'];

  // Menghitung total jarak untuk rute yang tetap
  int jarakTotal = calculateTotalDistance(rute, jarak);

  // Menampilkan hasil menggunakan stdout.write
  stdout.write("Total jarak terpendek yang harus ditempuh kurir: $jarakTotal km\n");
}

// Fungsi untuk menghitung total jarak
int calculateTotalDistance(List<String> rute, Map<String, Map<String, int>> jarak) {
  return jarak[rute[0]]![rute[1]]! +  // A ke B
         jarak[rute[1]]![rute[2]]! +  // B ke C
         jarak[rute[2]]![rute[3]]! +  // C ke D
         jarak[rute[3]]![rute[4]]! +  // D ke E
         jarak[rute[4]]![rute[0]]!;    // E kembali ke A
}

// Fungsi untuk mengembalikan jarak terpendek, jika diperlukan
int getMinimumDistance(int distance) {
  return distance < 0 ? 0 : distance; // Satu if untuk mengatur jarak minimal
}
