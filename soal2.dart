import 'dart:io';

void main() {
  // Meminta input jumlah uang yang ditabung per hari
  stdout.write('Masukkan jumlah uang yang ditabung per hari (Rp): ');
  String? inputUangPerHari = stdin.readLineSync();
  double uangPerHari = double.parse(inputUangPerHari!);

  // Meminta input jumlah hari menabung
  stdout.write('Masukkan jumlah hari menabung: ');
  String? inputHariMenabung = stdin.readLineSync();
  int jumlahHari = int.parse(inputHariMenabung!);

  // Menghitung total uang di celengan
  double totalUang = uangPerHari * jumlahHari;

  // Menampilkan total uang
  stdout.write('Total uang di celengan setelah $jumlahHari hari adalah Rp $totalUang');
}

