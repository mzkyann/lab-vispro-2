import 'dart:io';

void main() {
  // Mendefinisikan nilai pi
  const double pi = 3.14;

  // Meminta input diameter lingkaran
  stdout.write('Masukkan diameter lingkaran: ');
  String? inputDiameter = stdin.readLineSync();
  double diameter = double.parse(inputDiameter!);

  // Menghitung jari-jari lingkaran
  double radius = diameter / 2;

  // Menghitung luas lingkaran (π * r^2)
  double luasLingkaran = pi * radius * radius;

  // Menampilkan hasil luas lingkaran
  stdout.write('Luas lingkaran dengan diameter $diameter adalah $luasLingkaran');
}
