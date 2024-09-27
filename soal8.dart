import 'dart:io';

void main() {
  // Konsumsi energi per jam untuk masing-masing alat (sudah ditetapkan)
  double konsumsiAC = 1.5; // kWh per jam
  double konsumsiTV = 0.2; // kWh per jam
  double konsumsiLampu = 0.1; // kWh per jam

  // Meminta input waktu penggunaan alat dalam jam dari pengguna
  stdout.write('Masukkan waktu penggunaan AC (jam): ');
  int jamAC = int.parse(stdin.readLineSync()!);

  stdout.write('Masukkan waktu penggunaan TV (jam): ');
  int jamTV = int.parse(stdin.readLineSync()!);

  stdout.write('Masukkan waktu penggunaan Lampu (jam): ');
  int jamLampu = int.parse(stdin.readLineSync()!);

  // Menghitung total konsumsi energi harian
  double totalKonsumsi = (konsumsiAC * jamAC) + 
                         (konsumsiTV * jamTV) + 
                         (konsumsiLampu * jamLampu);

  // Menampilkan total konsumsi energi harian
  stdout.write('Total konsumsi energi harian keluarga adalah ${totalKonsumsi.toStringAsFixed(2)} kWh');
}
