import 'dart:io';

void main() {
  // Harga per kilogram
  const int hargaApel = 5000;
  const int hargaJeruk = 4000;

  // Meminta input jumlah kilogram apel
  stdout.write('Masukkan jumlah kilogram apel yang dibeli: ');
  String? inputApel = stdin.readLineSync();
  double jumlahApel = double.parse(inputApel!);

  // Meminta input jumlah kilogram jeruk
  stdout.write('Masukkan jumlah kilogram jeruk yang dibeli: ');
  String? inputJeruk = stdin.readLineSync();
  double jumlahJeruk = double.parse(inputJeruk!);

  // Menghitung total harga
  double totalHarga = (jumlahApel * hargaApel) + (jumlahJeruk * hargaJeruk);

  // Menampilkan total harga
  print('Total harga yang harus dibayar: Rp $totalHarga');
}
