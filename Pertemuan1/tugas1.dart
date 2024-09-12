import 'dart:io';

void main() {
  print("=== Aplikasi Kalkulator Sederhana ===");

  // Input bilangan pertama
  stdout.write("Masukkan bilangan pertama: ");
  double num1 = double.parse(stdin.readLineSync()!);

  // Input operator
  stdout.write("Masukkan operator (+, -, *, /): ");
  String operator = stdin.readLineSync()!;

  // Input bilangan kedua
  stdout.write("Masukkan bilangan kedua: ");
  double num2 = double.parse(stdin.readLineSync()!);

  double hasil;

  // Melakukan operasi berdasarkan input operator
  switch (operator) {
    case '+':
      hasil = num1 + num2;
      break;
    case '-':
      hasil = num1 - num2;
      break;
    case '*':
      hasil = num1 * num2;
      break;
    case '/':
      if (num2 != 0) {
        hasil = num1 / num2;
      } else {
        print("Error: Pembagian dengan 0 tidak valid.");
        return;
      }
      break;
    default:
      print("Operator tidak valid.");
      return;
  }

  print("Hasil: $num1 $operator $num2 = $hasil");
}
