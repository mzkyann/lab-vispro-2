import 'dart:io';

void main() {
  const double gajiPokok = 4000000; // Gaji pokok untuk 40 jam kerja per minggu
  const double bonus = 200000; // Bonus untuk jam kerja lebih dari 40
  const int jamKerjaMaksimal = 40; // Jam kerja maksimal

  // Meminta input jumlah jam kerja per minggu
  stdout.write('Masukkan jumlah jam kerja per minggu: ');
  int jamKerja = int.parse(stdin.readLineSync()!);

  // Menghitung total gaji
  double gajiTotal = (jamKerja > jamKerjaMaksimal)
      ? gajiPokok + bonus // Gaji pokok + bonus jika jam kerja lebih dari 40
      : (gajiPokok / jamKerjaMaksimal) * jamKerja; // Gaji proporsional jika jam kerja kurang dari atau sama dengan 40

  // Menampilkan total gaji
  stdout.write('Total gaji per minggu adalah Rp ${gajiTotal.toStringAsFixed(2)}');
}
