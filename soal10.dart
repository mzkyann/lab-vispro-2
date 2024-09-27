import 'dart:io';
void main() {
  // Daftar nasabah
  List<String> nasabah = ['Nasabah A', 'Nasabah B', 'Nasabah C', 'Nasabah D', 'Nasabah E'];

  // Menampilkan urutan pelayanan
  stdout.write("Urutan pelayanan nasabah di bank:");

  // Simulasi pelayanan
  simulateQueue(nasabah, 0);
}

// Fungsi untuk mensimulasikan antrian
void simulateQueue(List<String> nasabah, int index) {
  // Jika semua nasabah sudah dilayani
  if (index < nasabah.length) {
    // Tentukan loket berdasarkan indeks
    String loket = (index % 2 == 0) ? 'Loket 1' : 'Loket 2';

    // Tampilkan nasabah dan loket
    stdout.write("${nasabah[index]} dilayani di $loket");

    // Panggil fungsi ini untuk nasabah berikutnya
    simulateQueue(nasabah, index + 1);
  }
}
