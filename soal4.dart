import 'dart:io';

void main() {
  // Meminta input suhu dalam Celsius
  stdout.write('Masukkan suhu dalam Celsius: ');
  String? inputCelsius = stdin.readLineSync();
  double celsius = double.parse(inputCelsius!);

  // Mengonversi Celsius ke Fahrenheit
  double fahrenheit = (9 / 5) * celsius + 32;

  // Menampilkan hasil konversi
  stdout.write('Suhu dalam Fahrenheit adalah $fahrenheit');
}
