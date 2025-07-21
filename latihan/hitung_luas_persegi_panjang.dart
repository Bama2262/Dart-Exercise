import 'dart:io';

void main() {
  print("=== Program Menghitung Luas Persegi Panjang ===");

  stdout.write("Masukkan panjang: ");
  double panjang = double.parse(stdin.readLineSync()!);

  stdout.write("Masukkan lebar: ");
  double lebar = double.parse(stdin.readLineSync()!);

  double luas = hitungLuas(panjang, lebar);

  print("Luas persegi panjang adalah: $luas");  
}

double hitungLuas(double p, double l) {
  return p * l;
}