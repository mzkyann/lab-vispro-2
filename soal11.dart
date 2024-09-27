import 'dart:io';

void main() {
  // Baterai awal
  double baterai = 100;

  // Meminta input waktu penggunaan dari pengguna
  stdout.write('Masukkan waktu penggunaan untuk chatting (dalam menit): ');
  double chatting = double.parse(stdin.readLineSync()!);

  stdout.write('Masukkan waktu penggunaan untuk menonton video (dalam menit): ');
  double video = double.parse(stdin.readLineSync()!);

  stdout.write('Masukkan waktu penggunaan untuk bermain game (dalam menit): ');
  double game = double.parse(stdin.readLineSync()!);

  // Menghitung pengurangan baterai
  baterai -= calculateBatteryUsage(chatting, 1); // 1% setiap 5 menit
  baterai -= calculateBatteryUsage(video, 2);    // 2% setiap 5 menit
  baterai -= calculateBatteryUsage(game, 3);      // 3% setiap 5 menit

  // Tampilkan sisa baterai
  displayRemainingBattery(baterai);
}

// Fungsi untuk menghitung penggunaan baterai
double calculateBatteryUsage(double minutes, double usagePer5Min) {
  return (minutes / 5) * usagePer5Min; // Menghitung total penggunaan baterai
}

// Fungsi untuk menampilkan sisa baterai
void displayRemainingBattery(double baterai) {
  // Satu if untuk memeriksa jika baterai negatif
  if (baterai < 0) baterai = 0; // Jika baterai kurang dari 0, set ke 0

  stdout.write("Sisa baterai adalah ${baterai.toStringAsFixed(2)}%");
}
